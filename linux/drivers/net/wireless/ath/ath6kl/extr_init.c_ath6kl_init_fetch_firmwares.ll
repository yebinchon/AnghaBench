; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_init_fetch_firmwares.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_init_fetch_firmwares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }

@ATH6KL_FW_API5_FILE = common dso_local global i32 0, align 4
@ATH6KL_FW_API4_FILE = common dso_local global i32 0, align 4
@ATH6KL_FW_API3_FILE = common dso_local global i32 0, align 4
@ATH6KL_FW_API2_FILE = common dso_local global i32 0, align 4
@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"using fw api %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_init_fetch_firmwares(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %5 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %6 = call i32 @ath6kl_fetch_board_file(%struct.ath6kl* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %70

11:                                               ; preds = %1
  %12 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %13 = call i32 @ath6kl_fetch_testmode_file(%struct.ath6kl* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %70

18:                                               ; preds = %11
  %19 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %20 = load i32, i32* @ATH6KL_FW_API5_FILE, align 4
  %21 = call i32 @ath6kl_fetch_fw_apin(%struct.ath6kl* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %26 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %25, i32 0, i32 0
  store i32 5, i32* %26, align 4
  br label %64

27:                                               ; preds = %18
  %28 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %29 = load i32, i32* @ATH6KL_FW_API4_FILE, align 4
  %30 = call i32 @ath6kl_fetch_fw_apin(%struct.ath6kl* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %35 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %34, i32 0, i32 0
  store i32 4, i32* %35, align 4
  br label %64

36:                                               ; preds = %27
  %37 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %38 = load i32, i32* @ATH6KL_FW_API3_FILE, align 4
  %39 = call i32 @ath6kl_fetch_fw_apin(%struct.ath6kl* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %44 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %43, i32 0, i32 0
  store i32 3, i32* %44, align 4
  br label %64

45:                                               ; preds = %36
  %46 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %47 = load i32, i32* @ATH6KL_FW_API2_FILE, align 4
  %48 = call i32 @ath6kl_fetch_fw_apin(%struct.ath6kl* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %53 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %52, i32 0, i32 0
  store i32 2, i32* %53, align 4
  br label %64

54:                                               ; preds = %45
  %55 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %56 = call i32 @ath6kl_fetch_fw_api1(%struct.ath6kl* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %70

61:                                               ; preds = %54
  %62 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %63 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %51, %42, %33, %24
  %65 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %66 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %67 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ath6kl_dbg(i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %64, %59, %16, %9
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @ath6kl_fetch_board_file(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_fetch_testmode_file(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_fetch_fw_apin(%struct.ath6kl*, i32) #1

declare dso_local i32 @ath6kl_fetch_fw_api1(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
