; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_mc_addr_list_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_mc_addr_list_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Clearing RAR[1-15]\0A\00", align 1
@IXGB_RAR_ENTRIES = common dso_local global i32 0, align 4
@RA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Clearing MTA\0A\00", align 1
@IXGB_MC_TBL_SIZE = common dso_local global i32 0, align 4
@MTA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Adding the multicast addresses:\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"MC Addr #%d = %pM\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Added a multicast address to RAR[%d]\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Hash value = 0x%03X\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"MC Update Complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgb_mc_addr_list_update(%struct.ixgb_hw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ixgb_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %11, align 4
  %13 = call i32 (...) @ENTER()
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %35, %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @IXGB_RAR_ENTRIES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %25 = load i32, i32* @RA, align 4
  %26 = load i32, i32* %10, align 4
  %27 = shl i32 %26, 1
  %28 = call i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw* %24, i32 %25, i32 %27, i32 0)
  %29 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %30 = load i32, i32* @RA, align 4
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 %31, 1
  %33 = add nsw i32 %32, 1
  %34 = call i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw* %29, i32 %30, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %19

38:                                               ; preds = %19
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %49, %38
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @IXGB_MC_TBL_SIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %46 = load i32, i32* @MTA, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw* %45, i32 %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %40

52:                                               ; preds = %40
  %53 = load i32*, i32** %6, align 8
  store i32* %53, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %91, %52
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %94

58:                                               ; preds = %54
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32* %61)
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @IXGB_RAR_ENTRIES, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @ixgb_rar_set(%struct.ixgb_hw* %67, i32* %68, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %84

75:                                               ; preds = %58
  %76 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @ixgb_hash_mc_addr(%struct.ixgb_hw* %76, i32* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @ixgb_mta_set(%struct.ixgb_hw* %81, i32 %82)
  br label %84

84:                                               ; preds = %75, %66
  %85 = load i32, i32* @ETH_ALEN, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32*, i32** %12, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %12, align 8
  br label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %54

94:                                               ; preds = %54
  %95 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @IXGB_WRITE_REG_ARRAY(%struct.ixgb_hw*, i32, i32, i32) #1

declare dso_local i32 @ixgb_rar_set(%struct.ixgb_hw*, i32*, i32) #1

declare dso_local i32 @ixgb_hash_mc_addr(%struct.ixgb_hw*, i32*) #1

declare dso_local i32 @ixgb_mta_set(%struct.ixgb_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
