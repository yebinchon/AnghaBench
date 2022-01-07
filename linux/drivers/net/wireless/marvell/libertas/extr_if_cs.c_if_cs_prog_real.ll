; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_prog_real.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_prog_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_cs_card = type { i32 }
%struct.firmware = type { i32, i32* }

@.str = private unnamed_addr constant [13 x i8] c"fw size %td\0A\00", align 1
@IF_CS_SQ_READ_LOW = common dso_local global i32 0, align 4
@IF_CS_SQ_HELPER_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"helper firmware doesn't answer\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"odd, need to retry this firmware block\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"could not download firmware\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IF_CS_CMD_LEN = common dso_local global i32 0, align 4
@IF_CS_CMD = common dso_local global i32 0, align 4
@IF_CS_HOST_STATUS = common dso_local global i32 0, align 4
@IF_CS_BIT_COMMAND = common dso_local global i32 0, align 4
@IF_CS_HOST_INT_CAUSE = common dso_local global i32 0, align 4
@IF_CS_CARD_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"can't download firmware at 0x%x\0A\00", align 1
@IF_CS_SCRATCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"firmware download failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_cs_card*, %struct.firmware*)* @if_cs_prog_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_cs_prog_real(%struct.if_cs_card* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.if_cs_card*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.if_cs_card* %0, %struct.if_cs_card** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.firmware*, %struct.firmware** %4, align 8
  %10 = getelementptr inbounds %struct.firmware, %struct.firmware* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @lbs_deb_cs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %14 = load i32, i32* @IF_CS_SQ_READ_LOW, align 4
  %15 = load i32, i32* @IF_CS_SQ_HELPER_OK, align 4
  %16 = call i32 @if_cs_poll_while_fw_download(%struct.if_cs_card* %13, i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %102

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %89, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.firmware*, %struct.firmware** %4, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %22
  %29 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %30 = load i32, i32* @IF_CS_SQ_READ_LOW, align 4
  %31 = call i32 @if_cs_read16(%struct.if_cs_card* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %40

39:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 20
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %102

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %56 = load i32, i32* @IF_CS_CMD_LEN, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @if_cs_write16(%struct.if_cs_card* %55, i32 %56, i32 %57)
  %59 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %60 = load i32, i32* @IF_CS_CMD, align 4
  %61 = load %struct.firmware*, %struct.firmware** %4, align 8
  %62 = getelementptr inbounds %struct.firmware, %struct.firmware* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = ashr i32 %68, 1
  %70 = call i32 @if_cs_write16_rep(%struct.if_cs_card* %59, i32 %60, i32* %66, i32 %69)
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
  br i1 %84, label %85, label %88

85:                                               ; preds = %54
  %86 = load i32, i32* %8, align 4
  %87 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %102

88:                                               ; preds = %54
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %22

93:                                               ; preds = %22
  %94 = load %struct.if_cs_card*, %struct.if_cs_card** %3, align 8
  %95 = load i32, i32* @IF_CS_SCRATCH, align 4
  %96 = call i32 @if_cs_poll_while_fw_download(%struct.if_cs_card* %94, i32 %95, i32 90)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %93
  br label %102

102:                                              ; preds = %101, %85, %43, %19
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @lbs_deb_cs(i8*, i32) #1

declare dso_local i32 @if_cs_poll_while_fw_download(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @if_cs_read16(%struct.if_cs_card*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @if_cs_write16(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @if_cs_write16_rep(%struct.if_cs_card*, i32, i32*, i32) #1

declare dso_local i32 @if_cs_write8(%struct.if_cs_card*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
