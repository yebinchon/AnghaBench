; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_repr.c_nfp_repr_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_repr.c_nfp_repr_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_repr = type { i32, i64, i32, i32 }
%struct.dst_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_repr*)* @nfp_repr_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_repr_clean(%struct.nfp_repr* %0) #0 {
  %2 = alloca %struct.nfp_repr*, align 8
  store %struct.nfp_repr* %0, %struct.nfp_repr** %2, align 8
  %3 = load %struct.nfp_repr*, %struct.nfp_repr** %2, align 8
  %4 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @unregister_netdev(i32 %5)
  %7 = load %struct.nfp_repr*, %struct.nfp_repr** %2, align 8
  %8 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.nfp_repr*, %struct.nfp_repr** %2, align 8
  %11 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @nfp_app_repr_clean(i32 %9, i32 %12)
  %14 = load %struct.nfp_repr*, %struct.nfp_repr** %2, align 8
  %15 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.dst_entry*
  %18 = call i32 @dst_release(%struct.dst_entry* %17)
  %19 = load %struct.nfp_repr*, %struct.nfp_repr** %2, align 8
  %20 = getelementptr inbounds %struct.nfp_repr, %struct.nfp_repr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @nfp_port_free(i32 %21)
  ret void
}

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i32 @nfp_app_repr_clean(i32, i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @nfp_port_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
