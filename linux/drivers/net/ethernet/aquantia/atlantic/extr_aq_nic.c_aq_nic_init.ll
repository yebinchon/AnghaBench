; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i32, i32, i32, %struct.TYPE_3__*, %struct.aq_vec_s**, i32, i32 }
%struct.TYPE_3__ = type { i32 (i32)*, i32 (i32, i32)* }
%struct.aq_vec_s = type { i32 }
%struct.TYPE_4__ = type { i32 }

@AQ_HW_POWER_STATE_D0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_nic_init(%struct.aq_nic_s* %0) #0 {
  %2 = alloca %struct.aq_nic_s*, align 8
  %3 = alloca %struct.aq_vec_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %2, align 8
  store %struct.aq_vec_s* null, %struct.aq_vec_s** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @AQ_HW_POWER_STATE_D0, align 4
  %7 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %8 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %7, i32 0, i32 6
  store i32 %6, i32* %8, align 4
  %9 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %10 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %9, i32 0, i32 5
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %13 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (i32)*, i32 (i32)** %15, align 8
  %17 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %18 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 %16(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %22 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %21, i32 0, i32 5
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %80

27:                                               ; preds = %1
  %28 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %29 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32 (i32, i32)*, i32 (i32, i32)** %31, align 8
  %33 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %34 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %37 = call %struct.TYPE_4__* @aq_nic_get_ndev(%struct.aq_nic_s* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %32(i32 %35, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %80

44:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  %45 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %46 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %45, i32 0, i32 4
  %47 = load %struct.aq_vec_s**, %struct.aq_vec_s*** %46, align 8
  %48 = getelementptr inbounds %struct.aq_vec_s*, %struct.aq_vec_s** %47, i64 0
  %49 = load %struct.aq_vec_s*, %struct.aq_vec_s** %48, align 8
  store %struct.aq_vec_s* %49, %struct.aq_vec_s** %3, align 8
  br label %50

50:                                               ; preds = %65, %44
  %51 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %52 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load %struct.aq_vec_s*, %struct.aq_vec_s** %3, align 8
  %58 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %59 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %62 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @aq_vec_init(%struct.aq_vec_s* %57, %struct.TYPE_3__* %60, i32 %63)
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %5, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %69 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %68, i32 0, i32 4
  %70 = load %struct.aq_vec_s**, %struct.aq_vec_s*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.aq_vec_s*, %struct.aq_vec_s** %70, i64 %72
  %74 = load %struct.aq_vec_s*, %struct.aq_vec_s** %73, align 8
  store %struct.aq_vec_s* %74, %struct.aq_vec_s** %3, align 8
  br label %50

75:                                               ; preds = %50
  %76 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %77 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @netif_carrier_off(i32 %78)
  br label %80

80:                                               ; preds = %75, %43, %26
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_4__* @aq_nic_get_ndev(%struct.aq_nic_s*) #1

declare dso_local i32 @aq_vec_init(%struct.aq_vec_s*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
