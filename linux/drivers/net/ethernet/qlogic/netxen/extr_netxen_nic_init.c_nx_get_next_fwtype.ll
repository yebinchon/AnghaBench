; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_nx_get_next_fwtype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_nx_get_next_fwtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NX_FLASH_ROMIMAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netxen_adapter*)* @nx_get_next_fwtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nx_get_next_fwtype(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %4 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %36 [
    i32 128, label %7
    i32 129, label %8
    i32 130, label %34
    i32 132, label %35
    i32 131, label %35
  ]

7:                                                ; preds = %1
  store i32 129, i32* %3, align 4
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @NX_IS_REVISION_P3P(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = load i32, i32* @NX_FLASH_ROMIMAGE, align 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %8
  %18 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @NX_IS_REVISION_P2(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 132, i32* %3, align 4
  br label %32

25:                                               ; preds = %17
  %26 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %27 = call i32 @netxen_p3_has_mn(%struct.netxen_adapter* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 130, i32* %3, align 4
  br label %31

30:                                               ; preds = %25
  store i32 131, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %31, %24
  br label %33

33:                                               ; preds = %32, %15
  br label %38

34:                                               ; preds = %1
  store i32 131, i32* %3, align 4
  br label %38

35:                                               ; preds = %1, %1
  br label %36

36:                                               ; preds = %1, %35
  %37 = load i32, i32* @NX_FLASH_ROMIMAGE, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %34, %33, %7
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local i32 @NX_IS_REVISION_P3P(i32) #1

declare dso_local i32 @NX_IS_REVISION_P2(i32) #1

declare dso_local i32 @netxen_p3_has_mn(%struct.netxen_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
