; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_eswitch_mode_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_devlink.c_nfp_devlink_eswitch_mode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.nfp_pf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32*)* @nfp_devlink_eswitch_mode_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_devlink_eswitch_mode_get(%struct.devlink* %0, i32* %1) #0 {
  %3 = alloca %struct.devlink*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfp_pf*, align 8
  store %struct.devlink* %0, %struct.devlink** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.devlink*, %struct.devlink** %3, align 8
  %7 = call %struct.nfp_pf* @devlink_priv(%struct.devlink* %6)
  store %struct.nfp_pf* %7, %struct.nfp_pf** %5, align 8
  %8 = load %struct.nfp_pf*, %struct.nfp_pf** %5, align 8
  %9 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @nfp_app_eswitch_mode_get(i32 %10, i32* %11)
  ret i32 %12
}

declare dso_local %struct.nfp_pf* @devlink_priv(%struct.devlink*) #1

declare dso_local i32 @nfp_app_eswitch_mode_get(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
