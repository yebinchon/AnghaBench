; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_find_peer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_find_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.tg3 = type { %struct.pci_dev* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_dev* (%struct.tg3*)* @tg3_find_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_dev* @tg3_find_peer(%struct.tg3* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %7 = load %struct.tg3*, %struct.tg3** %3, align 8
  %8 = getelementptr inbounds %struct.tg3, %struct.tg3* %7, i32 0, i32 0
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, -8
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %38, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %14, 8
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load %struct.tg3*, %struct.tg3** %3, align 8
  %18 = getelementptr inbounds %struct.tg3, %struct.tg3* %17, i32 0, i32 0
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.pci_dev* @pci_get_slot(i32 %21, i32 %24)
  store %struct.pci_dev* %25, %struct.pci_dev** %4, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = icmp ne %struct.pci_dev* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load %struct.tg3*, %struct.tg3** %3, align 8
  %31 = getelementptr inbounds %struct.tg3, %struct.tg3* %30, i32 0, i32 0
  %32 = load %struct.pci_dev*, %struct.pci_dev** %31, align 8
  %33 = icmp ne %struct.pci_dev* %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %41

35:                                               ; preds = %28, %16
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i32 @pci_dev_put(%struct.pci_dev* %36)
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %13

41:                                               ; preds = %34, %13
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = icmp ne %struct.pci_dev* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.tg3*, %struct.tg3** %3, align 8
  %46 = getelementptr inbounds %struct.tg3, %struct.tg3* %45, i32 0, i32 0
  %47 = load %struct.pci_dev*, %struct.pci_dev** %46, align 8
  store %struct.pci_dev* %47, %struct.pci_dev** %4, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %48, %struct.pci_dev** %2, align 8
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = call i32 @pci_dev_put(%struct.pci_dev* %50)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %52, %struct.pci_dev** %2, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  ret %struct.pci_dev* %54
}

declare dso_local %struct.pci_dev* @pci_get_slot(i32, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
