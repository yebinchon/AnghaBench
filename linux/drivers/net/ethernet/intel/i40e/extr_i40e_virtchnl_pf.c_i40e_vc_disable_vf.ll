; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_disable_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_disable_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Failed to initiate reset for VF %d after 200 milliseconds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vf*)* @i40e_vc_disable_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_vc_disable_vf(%struct.i40e_vf* %0) #0 {
  %2 = alloca %struct.i40e_vf*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %2, align 8
  %4 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %5 = call i32 @i40e_vc_notify_vf_reset(%struct.i40e_vf* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %16, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 20
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %11 = call i64 @i40e_reset_vf(%struct.i40e_vf* %10, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %30

14:                                               ; preds = %9
  %15 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %16

16:                                               ; preds = %14
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %6

19:                                               ; preds = %6
  %20 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %27 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_warn(i32* %25, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %19, %13
  ret void
}

declare dso_local i32 @i40e_vc_notify_vf_reset(%struct.i40e_vf*) #1

declare dso_local i64 @i40e_reset_vf(%struct.i40e_vf*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
