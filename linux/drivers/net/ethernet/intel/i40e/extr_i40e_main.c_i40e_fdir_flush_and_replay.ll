; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_fdir_flush_and_replay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_fdir_flush_and_replay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i64, i32, i32, i64, %struct.TYPE_5__*, %struct.TYPE_6__, i32, i32, i32*, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@I40E_MIN_FD_FLUSH_INTERVAL = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@I40E_MIN_FD_FLUSH_SB_ATR_UNSTABLE = common dso_local global i64 0, align 8
@I40E_FDIR_BUFFER_HEAD_ROOM_FOR_ATR = common dso_local global i32 0, align 4
@I40E_DEBUG_FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ATR disabled, not enough FD filter space.\0A\00", align 1
@__I40E_FD_ATR_AUTO_DISABLED = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_1 = common dso_local global i32 0, align 4
@I40E_PFQF_CTL_1_CLEARFDTABLE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"FD table did not flush, needs more time\0A\00", align 1
@__I40E_FD_FLUSH_REQUESTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"FD Filter table flushed and FD-SB replayed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_fdir_flush_and_replay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_fdir_flush_and_replay(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  store i32 50, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* @jiffies, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @I40E_MIN_FD_FLUSH_INTERVAL, align 8
  %13 = load i64, i64* @HZ, align 8
  %14 = mul i64 %12, %13
  %15 = add i64 %11, %14
  %16 = call i32 @time_after(i64 %8, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %150

19:                                               ; preds = %1
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @I40E_MIN_FD_FLUSH_SB_ATR_UNSTABLE, align 8
  %24 = load i64, i64* @HZ, align 8
  %25 = mul i64 %23, %24
  %26 = add i64 %22, %25
  store i64 %26, i64* %3, align 8
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %28 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %31 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %6, align 4
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @time_after(i64 %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %19
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @I40E_FDIR_BUFFER_HEAD_ROOM_FOR_ATR, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i32, i32* @I40E_DEBUG_FD, align 4
  %44 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %45 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %43, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %52 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %51, i32 0, i32 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i32 @dev_info(i32* %54, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %50, %42
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %38, %19
  %58 = load i64, i64* @jiffies, align 8
  %59 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %60 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @__I40E_FD_ATR_AUTO_DISABLED, align 4
  %62 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %63 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @set_bit(i32 %61, i32 %64)
  %66 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %67 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %66, i32 0, i32 5
  %68 = load i32, i32* @I40E_PFQF_CTL_1, align 4
  %69 = load i32, i32* @I40E_PFQF_CTL_1_CLEARFDTABLE_MASK, align 4
  %70 = call i32 @wr32(%struct.TYPE_6__* %67, i32 %68, i32 %69)
  %71 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %72 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %71, i32 0, i32 5
  %73 = call i32 @i40e_flush(%struct.TYPE_6__* %72)
  %74 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %75 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %79 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %78, i32 0, i32 9
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %92, %57
  %81 = call i32 @usleep_range(i32 5000, i32 6000)
  %82 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %83 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %82, i32 0, i32 5
  %84 = load i32, i32* @I40E_PFQF_CTL_1, align 4
  %85 = call i32 @rd32(%struct.TYPE_6__* %83, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @I40E_PFQF_CTL_1_CLEARFDTABLE_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %80
  br label %96

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %4, align 4
  %95 = icmp ne i32 %93, 0
  br i1 %95, label %80, label %96

96:                                               ; preds = %92, %90
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @I40E_PFQF_CTL_1_CLEARFDTABLE_MASK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %103 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %102, i32 0, i32 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = call i32 @dev_warn(i32* %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %150

107:                                              ; preds = %96
  %108 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %109 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %108, i32 0, i32 8
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %112 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @i40e_fdir_filter_restore(i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %107
  %120 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %121 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* @__I40E_FD_ATR_AUTO_DISABLED, align 4
  %126 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %127 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @clear_bit(i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %124, %119, %107
  %131 = load i32, i32* @__I40E_FD_FLUSH_REQUESTED, align 4
  %132 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %133 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @clear_bit(i32 %131, i32 %134)
  %136 = load i32, i32* @I40E_DEBUG_FD, align 4
  %137 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %138 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %136, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %130
  %144 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %145 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %144, i32 0, i32 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = call i32 @dev_info(i32* %147, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %149

149:                                              ; preds = %143, %130
  br label %150

150:                                              ; preds = %18, %149, %101
  ret void
}

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @wr32(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @i40e_flush(%struct.TYPE_6__*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rd32(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @i40e_fdir_filter_restore(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
