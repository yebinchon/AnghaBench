; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_dump_fw_crash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_dump_fw_crash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@REGISTER_DUMP_LEN_MAX = common dso_local global i32 0, align 4
@hi_failure_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"failed to get ptr to register dump area: %d\0A\00", align 1
@ATH6KL_DBG_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"register dump data address 0x%x\0A\00", align 1
@REGISTER_DUMP_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to get register dump: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"crash dump:\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"hw 0x%x fw %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%d: 0x%8.8x 0x%8.8x 0x%8.8x 0x%8.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl*)* @ath6kl_hif_dump_fw_crash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_hif_dump_fw_crash(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %10 = load i32, i32* @REGISTER_DUMP_LEN_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %15 = load i32, i32* @hi_failure_state, align 4
  %16 = call i32 @HI_ITEM(i32 %15)
  %17 = call i32 @ath6kl_get_hi_item_addr(%struct.ath6kl* %14, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %19 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @TARG_VTOP(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ath6kl_diag_read32(%struct.ath6kl* %23, i32 %24, i32* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %1
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 1, i32* %9, align 4
  br label %106

34:                                               ; preds = %28
  %35 = load i32, i32* @ATH6KL_DBG_IRQ, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @ath6kl_dbg(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %39 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @TARG_VTOP(i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds i32, i32* %13, i64 0
  %46 = load i32, i32* @REGISTER_DUMP_COUNT, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32 @ath6kl_diag_read(%struct.ath6kl* %43, i32 %44, i32* %45, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %34
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @ath6kl_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  store i32 1, i32* %9, align 4
  br label %106

56:                                               ; preds = %34
  %57 = call i32 (i8*, ...) @ath6kl_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %59 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %64 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @ath6kl_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %67)
  %69 = load i32, i32* @REGISTER_DUMP_COUNT, align 4
  %70 = srem i32 %69, 4
  %71 = call i32 @BUILD_BUG_ON(i32 %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %102, %56
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @REGISTER_DUMP_COUNT, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %13, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %13, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le32_to_cpu(i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %13, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le32_to_cpu(i32 %93)
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %13, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le32_to_cpu(i32 %99)
  %101 = call i32 (i8*, ...) @ath6kl_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %82, i32 %88, i32 %94, i32 %100)
  br label %102

102:                                              ; preds = %76
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 4
  store i32 %104, i32* %5, align 4
  br label %72

105:                                              ; preds = %72
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %105, %53, %31
  %107 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %9, align 4
  switch i32 %108, label %110 [
    i32 0, label %109
    i32 1, label %109
  ]

109:                                              ; preds = %106, %106
  ret void

110:                                              ; preds = %106
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ath6kl_get_hi_item_addr(%struct.ath6kl*, i32) #2

declare dso_local i32 @HI_ITEM(i32) #2

declare dso_local i32 @TARG_VTOP(i32, i32) #2

declare dso_local i32 @ath6kl_diag_read32(%struct.ath6kl*, i32, i32*) #2

declare dso_local i32 @ath6kl_warn(i8*, i32) #2

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #2

declare dso_local i32 @ath6kl_diag_read(%struct.ath6kl*, i32, i32*, i32) #2

declare dso_local i32 @ath6kl_info(i8*, ...) #2

declare dso_local i32 @BUILD_BUG_ON(i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
