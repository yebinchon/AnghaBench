; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i32, i32*)* }
%struct.ethtool_regs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_nic_get_regs(%struct.aq_nic_s* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.aq_nic_s*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %14 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %16, align 8
  %18 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %19 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.aq_nic_s*, %struct.aq_nic_s** %4, align 8
  %22 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 %17(i32 %20, i32 %24, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %31

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
