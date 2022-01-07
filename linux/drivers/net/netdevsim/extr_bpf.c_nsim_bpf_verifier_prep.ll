; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_verifier_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_verifier_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nsim_dev = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_prog*)* @nsim_bpf_verifier_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_bpf_verifier_prep(%struct.bpf_prog* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca %struct.nsim_dev*, align 8
  store %struct.bpf_prog* %0, %struct.bpf_prog** %3, align 8
  %5 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %6 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nsim_dev* @bpf_offload_dev_priv(i32 %11)
  store %struct.nsim_dev* %12, %struct.nsim_dev** %4, align 8
  %13 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %14 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %23 = call i32 @nsim_bpf_create_prog(%struct.nsim_dev* %21, %struct.bpf_prog* %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.nsim_dev* @bpf_offload_dev_priv(i32) #1

declare dso_local i32 @nsim_bpf_create_prog(%struct.nsim_dev*, %struct.bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
