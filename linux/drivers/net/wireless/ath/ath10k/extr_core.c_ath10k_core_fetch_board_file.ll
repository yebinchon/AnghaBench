; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_fetch_board_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_fetch_board_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ATH10K_BD_IE_BOARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to create board name: %d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to create fallback board name: %d\00", align 1
@ATH10K_BD_IE_BOARD_EXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"fallback to eboard.bin since board id 0\00", align 1
@ATH10K_BOARD_API2_FILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"failed to fetch board-2.bin or board.bin from %s\0A\00", align 1
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"using board api %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_core_fetch_board_file(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [100 x i8], align 16
  %7 = alloca [100 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ATH10K_BD_IE_BOARD, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %15 = call i32 @ath10k_core_create_board_name(%struct.ath10k* %13, i8* %14, i32 100, i32 1)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %87

23:                                               ; preds = %12
  %24 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %26 = call i32 @ath10k_core_create_board_name(%struct.ath10k* %24, i8* %25, i32 100, i32 0)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %87

34:                                               ; preds = %23
  br label %50

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ATH10K_BD_IE_BOARD_EXT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %41 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %42 = call i32 @ath10k_core_create_eboard_name(%struct.ath10k* %40, i8* %41, i32 100)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %47 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %62

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %52 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %51, i32 0, i32 0
  store i32 2, i32* %52, align 4
  %53 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %55 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0
  %56 = load i32, i32* @ATH10K_BOARD_API2_FILE, align 4
  %57 = call i32 @ath10k_core_fetch_board_data_api_n(%struct.ath10k* %53, i8* %54, i8* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %80

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %45
  %63 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %64 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ath10k_core_fetch_board_data_api_1(%struct.ath10k* %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %72 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %73 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %71, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %87

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %60
  %81 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %82 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %83 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %84 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ath10k_dbg(%struct.ath10k* %81, i32 %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %80, %70, %29, %18
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @ath10k_core_create_board_name(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @ath10k_core_create_eboard_name(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_core_fetch_board_data_api_n(%struct.ath10k*, i8*, i8*, i32) #1

declare dso_local i32 @ath10k_core_fetch_board_data_api_1(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
