; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_table_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_rtsym.c_nfp_rtsym_table_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_rtsym_table = type { i32 }
%struct.nfp_cpp = type { i32 }
%struct.nfp_mip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_rtsym_table* @nfp_rtsym_table_read(%struct.nfp_cpp* %0) #0 {
  %2 = alloca %struct.nfp_cpp*, align 8
  %3 = alloca %struct.nfp_rtsym_table*, align 8
  %4 = alloca %struct.nfp_mip*, align 8
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %2, align 8
  %5 = load %struct.nfp_cpp*, %struct.nfp_cpp** %2, align 8
  %6 = call %struct.nfp_mip* @nfp_mip_open(%struct.nfp_cpp* %5)
  store %struct.nfp_mip* %6, %struct.nfp_mip** %4, align 8
  %7 = load %struct.nfp_cpp*, %struct.nfp_cpp** %2, align 8
  %8 = load %struct.nfp_mip*, %struct.nfp_mip** %4, align 8
  %9 = call %struct.nfp_rtsym_table* @__nfp_rtsym_table_read(%struct.nfp_cpp* %7, %struct.nfp_mip* %8)
  store %struct.nfp_rtsym_table* %9, %struct.nfp_rtsym_table** %3, align 8
  %10 = load %struct.nfp_mip*, %struct.nfp_mip** %4, align 8
  %11 = call i32 @nfp_mip_close(%struct.nfp_mip* %10)
  %12 = load %struct.nfp_rtsym_table*, %struct.nfp_rtsym_table** %3, align 8
  ret %struct.nfp_rtsym_table* %12
}

declare dso_local %struct.nfp_mip* @nfp_mip_open(%struct.nfp_cpp*) #1

declare dso_local %struct.nfp_rtsym_table* @__nfp_rtsym_table_read(%struct.nfp_cpp*, %struct.nfp_mip*) #1

declare dso_local i32 @nfp_mip_close(%struct.nfp_mip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
