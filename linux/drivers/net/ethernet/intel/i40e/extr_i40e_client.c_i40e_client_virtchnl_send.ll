; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_client_virtchnl_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_client_virtchnl_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_info = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_4__*, %struct.i40e_hw }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i40e_client = type { i32 }

@VIRTCHNL_OP_IWARP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Unable to send iWarp message to VF, error %d, aq status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_info*, %struct.i40e_client*, i32, i32*, i32)* @i40e_client_virtchnl_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_client_virtchnl_send(%struct.i40e_info* %0, %struct.i40e_client* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.i40e_info*, align 8
  %7 = alloca %struct.i40e_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.i40e_pf*, align 8
  %12 = alloca %struct.i40e_hw*, align 8
  %13 = alloca i32, align 4
  store %struct.i40e_info* %0, %struct.i40e_info** %6, align 8
  store %struct.i40e_client* %1, %struct.i40e_client** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.i40e_info*, %struct.i40e_info** %6, align 8
  %15 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %14, i32 0, i32 0
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %15, align 8
  store %struct.i40e_pf* %16, %struct.i40e_pf** %11, align 8
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %18 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %17, i32 0, i32 1
  store %struct.i40e_hw* %18, %struct.i40e_hw** %12, align 8
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @VIRTCHNL_OP_IWARP, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @i40e_aq_send_msg_to_vf(%struct.i40e_hw* %19, i32 %20, i32 %21, i32 0, i32* %22, i32 %23, i32* null)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %5
  %28 = load %struct.i40e_pf*, %struct.i40e_pf** %11, align 8
  %29 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %12, align 8
  %34 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %27, %5
  %39 = load i32, i32* %13, align 4
  ret i32 %39
}

declare dso_local i32 @i40e_aq_send_msg_to_vf(%struct.i40e_hw*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
