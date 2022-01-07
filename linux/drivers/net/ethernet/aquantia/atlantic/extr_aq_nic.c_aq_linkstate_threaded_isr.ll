; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_linkstate_threaded_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_linkstate_threaded_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @aq_linkstate_threaded_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_linkstate_threaded_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aq_nic_s*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.aq_nic_s*
  store %struct.aq_nic_s* %8, %struct.aq_nic_s** %6, align 8
  %9 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %10 = icmp ne %struct.aq_nic_s* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %15 = call i32 @aq_nic_update_link_status(%struct.aq_nic_s* %14)
  %16 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %17 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %22 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.aq_nic_s*, %struct.aq_nic_s** %6, align 8
  %25 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @BIT(i32 %27)
  %29 = call i32 %20(i32 %23, i32 %28)
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %13, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @aq_nic_update_link_status(%struct.aq_nic_s*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
