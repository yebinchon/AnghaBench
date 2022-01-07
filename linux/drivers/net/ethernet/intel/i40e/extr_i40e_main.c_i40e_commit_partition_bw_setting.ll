; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_commit_partition_bw_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_commit_partition_bw_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Commit BW only works on partition 1! This is partition %d\00", align 1
@I40E_NOT_SUPPORTED = common dso_local global i64 0, align 8
@I40E_RESOURCE_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Cannot acquire NVM for read access, err %s aq_err %s\0A\00", align 1
@I40E_SR_NVM_CONTROL_WORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"NVM read error, err %s aq_err %s\0A\00", align 1
@I40E_RESOURCE_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Cannot acquire NVM for write access, err %s aq_err %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"BW settings NOT SAVED, err %s aq_err %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_commit_partition_bw_setting(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %6 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %7 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %15, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i64, i64* @I40E_NOT_SUPPORTED, align 8
  store i64 %21, i64* %4, align 8
  br label %134

22:                                               ; preds = %1
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 0
  %25 = load i32, i32* @I40E_RESOURCE_READ, align 4
  %26 = call i64 @i40e_acquire_nvm(%struct.TYPE_11__* %24, i32 %25)
  store i64 %26, i64* %4, align 8
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %28 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %22
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 0
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @i40e_stat_str(%struct.TYPE_11__* %40, i64 %41)
  %43 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %44 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %43, i32 0, i32 0
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @i40e_aq_str(%struct.TYPE_11__* %44, i32 %45)
  %47 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %46)
  br label %134

48:                                               ; preds = %22
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 0
  %51 = load i32, i32* @I40E_SR_NVM_CONTROL_WORD, align 4
  %52 = call i64 @i40e_aq_read_nvm(%struct.TYPE_11__* %50, i32 %51, i32 16, i32 4, i32* %5, i32 0, i32* null)
  store i64 %52, i64* %4, align 8
  %53 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %54 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %3, align 4
  %58 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %59 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %58, i32 0, i32 0
  %60 = call i32 @i40e_release_nvm(%struct.TYPE_11__* %59)
  %61 = load i64, i64* %4, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %48
  %64 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %65 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %69 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %68, i32 0, i32 0
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @i40e_stat_str(%struct.TYPE_11__* %69, i64 %70)
  %72 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %73 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %72, i32 0, i32 0
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @i40e_aq_str(%struct.TYPE_11__* %73, i32 %74)
  %76 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %75)
  br label %134

77:                                               ; preds = %48
  %78 = call i32 @msleep(i32 50)
  %79 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %80 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %79, i32 0, i32 0
  %81 = load i32, i32* @I40E_RESOURCE_WRITE, align 4
  %82 = call i64 @i40e_acquire_nvm(%struct.TYPE_11__* %80, i32 %81)
  store i64 %82, i64* %4, align 8
  %83 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %84 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %3, align 4
  %88 = load i64, i64* %4, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %77
  %91 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %92 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %96 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %95, i32 0, i32 0
  %97 = load i64, i64* %4, align 8
  %98 = call i32 @i40e_stat_str(%struct.TYPE_11__* %96, i64 %97)
  %99 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %100 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %99, i32 0, i32 0
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @i40e_aq_str(%struct.TYPE_11__* %100, i32 %101)
  %103 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %94, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %102)
  br label %134

104:                                              ; preds = %77
  %105 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %106 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %105, i32 0, i32 0
  %107 = load i32, i32* @I40E_SR_NVM_CONTROL_WORD, align 4
  %108 = call i64 @i40e_aq_update_nvm(%struct.TYPE_11__* %106, i32 %107, i32 16, i32 4, i32* %5, i32 1, i32 0, i32* null)
  store i64 %108, i64* %4, align 8
  %109 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %110 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %3, align 4
  %114 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %115 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %114, i32 0, i32 0
  %116 = call i32 @i40e_release_nvm(%struct.TYPE_11__* %115)
  %117 = load i64, i64* %4, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %133

119:                                              ; preds = %104
  %120 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %121 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %125 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %124, i32 0, i32 0
  %126 = load i64, i64* %4, align 8
  %127 = call i32 @i40e_stat_str(%struct.TYPE_11__* %125, i64 %126)
  %128 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %129 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %128, i32 0, i32 0
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @i40e_aq_str(%struct.TYPE_11__* %129, i32 %130)
  %132 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %123, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %127, i32 %131)
  br label %133

133:                                              ; preds = %119, %104
  br label %134

134:                                              ; preds = %133, %90, %63, %34, %11
  %135 = load i64, i64* %4, align 8
  ret i64 %135
}

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i64 @i40e_acquire_nvm(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @i40e_aq_str(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @i40e_aq_read_nvm(%struct.TYPE_11__*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @i40e_release_nvm(%struct.TYPE_11__*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @i40e_aq_update_nvm(%struct.TYPE_11__*, i32, i32, i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
