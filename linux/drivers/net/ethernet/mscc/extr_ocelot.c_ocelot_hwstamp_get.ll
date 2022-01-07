; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_hwstamp_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_hwstamp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot_port = type { %struct.ocelot* }
%struct.ocelot = type { i32 }
%struct.ifreq = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocelot_port*, %struct.ifreq*)* @ocelot_hwstamp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_hwstamp_get(%struct.ocelot_port* %0, %struct.ifreq* %1) #0 {
  %3 = alloca %struct.ocelot_port*, align 8
  %4 = alloca %struct.ifreq*, align 8
  %5 = alloca %struct.ocelot*, align 8
  store %struct.ocelot_port* %0, %struct.ocelot_port** %3, align 8
  store %struct.ifreq* %1, %struct.ifreq** %4, align 8
  %6 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %7 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %6, i32 0, i32 0
  %8 = load %struct.ocelot*, %struct.ocelot** %7, align 8
  store %struct.ocelot* %8, %struct.ocelot** %5, align 8
  %9 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %10 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ocelot*, %struct.ocelot** %5, align 8
  %13 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %12, i32 0, i32 0
  %14 = call i64 @copy_to_user(i32 %11, i32* %13, i32 4)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EFAULT, align 4
  %18 = sub nsw i32 0, %17
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  ret i32 %21
}

declare dso_local i64 @copy_to_user(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
