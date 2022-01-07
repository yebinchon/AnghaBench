; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_eswitch_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_eswitch_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_abm* }
%struct.nfp_abm = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, i32)* @nfp_abm_eswitch_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_eswitch_mode_set(%struct.nfp_app* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_abm*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %8 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %7, i32 0, i32 0
  %9 = load %struct.nfp_abm*, %struct.nfp_abm** %8, align 8
  store %struct.nfp_abm* %9, %struct.nfp_abm** %6, align 8
  %10 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %11 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %24 [
    i32 129, label %18
    i32 128, label %21
  ]

18:                                               ; preds = %16
  %19 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %20 = call i32 @nfp_abm_eswitch_set_legacy(%struct.nfp_abm* %19)
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %16
  %22 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %23 = call i32 @nfp_abm_eswitch_set_switchdev(%struct.nfp_abm* %22)
  store i32 %23, i32* %3, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %21, %18, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @nfp_abm_eswitch_set_legacy(%struct.nfp_abm*) #1

declare dso_local i32 @nfp_abm_eswitch_set_switchdev(%struct.nfp_abm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
