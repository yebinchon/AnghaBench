; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i32, i32, %struct.TYPE_4__*, %struct.aq_vec_s**, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32)*, i32 (i32, i32)* }
%struct.aq_vec_s = type { i32 }
%struct.TYPE_3__ = type { i64 }

@AQ_CFG_IRQ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_nic_stop(%struct.aq_nic_s* %0) #0 {
  %2 = alloca %struct.aq_nic_s*, align 8
  %3 = alloca %struct.aq_vec_s*, align 8
  %4 = alloca i32, align 4
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %2, align 8
  store %struct.aq_vec_s* null, %struct.aq_vec_s** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %6 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @netif_tx_disable(i32 %7)
  %9 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %10 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @netif_carrier_off(i32 %11)
  %13 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %14 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %13, i32 0, i32 7
  %15 = call i32 @del_timer_sync(i32* %14)
  %16 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %17 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %16, i32 0, i32 6
  %18 = call i32 @cancel_work_sync(i32* %17)
  %19 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %20 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32 (i32, i32)*, i32 (i32, i32)** %22, align 8
  %24 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %25 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AQ_CFG_IRQ_MASK, align 4
  %28 = call i32 %23(i32 %26, i32 %27)
  %29 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %30 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %36 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %35, i32 0, i32 4
  %37 = call i32 @del_timer_sync(i32* %36)
  br label %41

38:                                               ; preds = %1
  %39 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %40 = call i32 @aq_pci_func_free_irqs(%struct.aq_nic_s* %39)
  br label %41

41:                                               ; preds = %38, %34
  store i32 0, i32* %4, align 4
  %42 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %43 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %42, i32 0, i32 3
  %44 = load %struct.aq_vec_s**, %struct.aq_vec_s*** %43, align 8
  %45 = getelementptr inbounds %struct.aq_vec_s*, %struct.aq_vec_s** %44, i64 0
  %46 = load %struct.aq_vec_s*, %struct.aq_vec_s** %45, align 8
  store %struct.aq_vec_s* %46, %struct.aq_vec_s** %3, align 8
  br label %47

47:                                               ; preds = %56, %41
  %48 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %49 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.aq_vec_s*, %struct.aq_vec_s** %3, align 8
  %55 = call i32 @aq_vec_stop(%struct.aq_vec_s* %54)
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %4, align 4
  %59 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %60 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %59, i32 0, i32 3
  %61 = load %struct.aq_vec_s**, %struct.aq_vec_s*** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.aq_vec_s*, %struct.aq_vec_s** %61, i64 %63
  %65 = load %struct.aq_vec_s*, %struct.aq_vec_s** %64, align 8
  store %struct.aq_vec_s* %65, %struct.aq_vec_s** %3, align 8
  br label %47

66:                                               ; preds = %47
  %67 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %68 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32 (i32)*, i32 (i32)** %70, align 8
  %72 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %73 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 %71(i32 %74)
  ret i32 %75
}

declare dso_local i32 @netif_tx_disable(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @aq_pci_func_free_irqs(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_vec_stop(%struct.aq_vec_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
