; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_bpf_map_get_next_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_offload.c_nfp_bpf_map_get_next_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_offloaded_map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_offloaded_map*, i8*, i8*)* @nfp_bpf_map_get_next_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_bpf_map_get_next_key(%struct.bpf_offloaded_map* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_offloaded_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.bpf_offloaded_map* %0, %struct.bpf_offloaded_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %5, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @nfp_bpf_ctrl_getfirst_entry(%struct.bpf_offloaded_map* %11, i8* %12)
  store i32 %13, i32* %4, align 4
  br label %19

14:                                               ; preds = %3
  %15 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @nfp_bpf_ctrl_getnext_entry(%struct.bpf_offloaded_map* %15, i8* %16, i8* %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %14, %10
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @nfp_bpf_ctrl_getfirst_entry(%struct.bpf_offloaded_map*, i8*) #1

declare dso_local i32 @nfp_bpf_ctrl_getnext_entry(%struct.bpf_offloaded_map*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
