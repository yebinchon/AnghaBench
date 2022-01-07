; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cimax2.c_netup_poll_ci_slot_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cimax2.c_netup_poll_ci_slot_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.netup_ci_state* }
%struct.netup_ci_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NETUP_IRQ_DETAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netup_poll_ci_slot_status(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_ca_en50221*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netup_ci_state*, align 8
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %10 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %9, i32 0, i32 0
  %11 = load %struct.netup_ci_state*, %struct.netup_ci_state** %10, align 8
  store %struct.netup_ci_state* %11, %struct.netup_ci_state** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 0, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %33

17:                                               ; preds = %3
  %18 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @NETUP_IRQ_DETAM, align 4
  %23 = call i32 (...) @ci_irq_flags()
  %24 = or i32 %22, %23
  br label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @NETUP_IRQ_DETAM, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %24, %21 ], [ %26, %25 ]
  %29 = call i32 @netup_ci_set_irq(%struct.dvb_ca_en50221* %18, i32 %28)
  %30 = load %struct.netup_ci_state*, %struct.netup_ci_state** %8, align 8
  %31 = getelementptr inbounds %struct.netup_ci_state, %struct.netup_ci_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %27, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @netup_ci_set_irq(%struct.dvb_ca_en50221*, i32) #1

declare dso_local i32 @ci_irq_flags(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
