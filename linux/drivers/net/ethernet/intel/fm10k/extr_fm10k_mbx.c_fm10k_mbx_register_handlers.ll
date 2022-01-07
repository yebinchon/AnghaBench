; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_register_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_register_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_info = type { %struct.fm10k_msg_data* }
%struct.fm10k_msg_data = type { i32 }

@FM10K_ERR_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_mbx_info*, %struct.fm10k_msg_data*)* @fm10k_mbx_register_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_mbx_register_handlers(%struct.fm10k_mbx_info* %0, %struct.fm10k_msg_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm10k_mbx_info*, align 8
  %5 = alloca %struct.fm10k_msg_data*, align 8
  store %struct.fm10k_mbx_info* %0, %struct.fm10k_mbx_info** %4, align 8
  store %struct.fm10k_msg_data* %1, %struct.fm10k_msg_data** %5, align 8
  %6 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %5, align 8
  %7 = call i64 @fm10k_mbx_validate_handlers(%struct.fm10k_msg_data* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @FM10K_ERR_PARAM, align 4
  store i32 %10, i32* %3, align 4
  br label %15

11:                                               ; preds = %2
  %12 = load %struct.fm10k_msg_data*, %struct.fm10k_msg_data** %5, align 8
  %13 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %4, align 8
  %14 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %13, i32 0, i32 0
  store %struct.fm10k_msg_data* %12, %struct.fm10k_msg_data** %14, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %11, %9
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i64 @fm10k_mbx_validate_handlers(%struct.fm10k_msg_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
