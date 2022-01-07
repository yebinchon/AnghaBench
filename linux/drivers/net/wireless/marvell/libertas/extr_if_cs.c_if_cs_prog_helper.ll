; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_prog_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_prog_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_cs_card = type { i64 }
%struct.firmware = type { i32, i32* }

@IF_CS_SCRATCH = common dso_local global i32 0, align 4
@IF_CS_SCRATCH_HELPER_OK = common dso_local global i32 0, align 4
@IF_CS_SCRATCH_BOOT_OK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"helper size %td\0A\00", align 1
@IF_CS_CMD_LEN = common dso_local global i32 0, align 4
@IF_CS_CMD = common dso_local global i32 0, align 4
@IF_CS_HOST_STATUS = common dso_local global i32 0, align 4
@IF_CS_BIT_COMMAND = common dso_local global i32 0, align 4
@IF_CS_HOST_INT_CAUSE = common dso_local global i32 0, align 4
@IF_CS_CARD_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"can't download helper at 0x%x, ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_cs_card*, %struct.firmware*)* @if_cs_prog_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_cs_prog_helper(%struct.if_cs_card* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.if_cs_card*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.if_cs_card* %0, %struct.if_cs_card** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %11 = getelementptr inbounds %struct.if_cs_card, %struct.if_cs_card* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %16 = load i32, i32* @IF_CS_SCRATCH, align 4
  %17 = call i32 @if_cs_read16(%struct.if_cs_card* %15, i32 %16)
  %18 = ashr i32 %17, 8
  store i32 %18, i32* %7, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %21 = load i32, i32* @IF_CS_SCRATCH, align 4
  %22 = call i32 @if_cs_read8(%struct.if_cs_card* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @IF_CS_SCRATCH_HELPER_OK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %98

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @IF_CS_SCRATCH_BOOT_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %98

35:                                               ; preds = %28
  %36 = load %struct.firmware*, %struct.firmware** %4, align 8
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @lbs_deb_cs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %93, %35
  store i32 256, i32* %8, align 4
  %41 = load %struct.firmware*, %struct.firmware** %4, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %49, %40
  %52 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %53 = load i32, i32* @IF_CS_CMD_LEN, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @if_cs_write16(%struct.if_cs_card* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %60 = load i32, i32* @IF_CS_CMD, align 4
  %61 = load %struct.firmware*, %struct.firmware** %4, align 8
  %62 = getelementptr inbounds %struct.firmware, %struct.firmware* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %8, align 4
  %68 = ashr i32 %67, 1
  %69 = call i32 @if_cs_write16_rep(%struct.if_cs_card* %59, i32 %60, i32* %66, i32 %68)
  br label %70

70:                                               ; preds = %58, %51
  %71 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %72 = load i32, i32* @IF_CS_HOST_STATUS, align 4
  %73 = load i32, i32* @IF_CS_BIT_COMMAND, align 4
  %74 = call i32 @if_cs_write8(%struct.if_cs_card* %71, i32 %72, i32 %73)
  %75 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %76 = load i32, i32* @IF_CS_HOST_INT_CAUSE, align 4
  %77 = load i32, i32* @IF_CS_BIT_COMMAND, align 4
  %78 = call i32 @if_cs_write16(%struct.if_cs_card* %75, i32 %76, i32 %77)
  %79 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %80 = load i32, i32* @IF_CS_CARD_STATUS, align 4
  %81 = load i32, i32* @IF_CS_BIT_COMMAND, align 4
  %82 = call i32 @if_cs_poll_while_fw_download(%struct.if_cs_card* %79, i32 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %70
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  br label %98

89:                                               ; preds = %70
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %40

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %85, %32, %27
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @if_cs_read16(%struct.if_cs_card*, i32) #1

declare dso_local i32 @if_cs_read8(%struct.if_cs_card*, i32) #1

declare dso_local i32 @lbs_deb_cs(i8*, i32) #1

declare dso_local i32 @if_cs_write16(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @if_cs_write16_rep(%struct.if_cs_card*, i32, i32*, i32) #1

declare dso_local i32 @if_cs_write8(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @if_cs_poll_while_fw_download(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
