; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_xdp_prog_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_xdp_prog_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_priv = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.netdev_bpf = type { %struct.bpf_prog* }
%struct.bpf_prog = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_priv*, %struct.netdev_bpf*)* @cpsw_xdp_prog_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_xdp_prog_setup(%struct.cpsw_priv* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpsw_priv*, align 8
  %5 = alloca %struct.netdev_bpf*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  store %struct.cpsw_priv* %0, %struct.cpsw_priv** %4, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %5, align 8
  %7 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %8 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %7, i32 0, i32 0
  %9 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  store %struct.bpf_prog* %9, %struct.bpf_prog** %6, align 8
  %10 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %11 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %17 = icmp ne %struct.bpf_prog* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %38

19:                                               ; preds = %15, %2
  %20 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %21 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %20, i32 0, i32 0
  %22 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %23 = call i32 @xdp_attachment_flags_ok(%struct.TYPE_3__* %21, %struct.netdev_bpf* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %19
  %29 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %30 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %33 = call i32 @WRITE_ONCE(i32 %31, %struct.bpf_prog* %32)
  %34 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %35 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %34, i32 0, i32 0
  %36 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %37 = call i32 @xdp_attachment_setup(%struct.TYPE_3__* %35, %struct.netdev_bpf* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %28, %25, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @xdp_attachment_flags_ok(%struct.TYPE_3__*, %struct.netdev_bpf*) #1

declare dso_local i32 @WRITE_ONCE(i32, %struct.bpf_prog*) #1

declare dso_local i32 @xdp_attachment_setup(%struct.TYPE_3__*, %struct.netdev_bpf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
