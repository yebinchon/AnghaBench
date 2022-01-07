; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_s3cmci_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3cmci_host = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3cmci_host*, i32)* @s3cmci_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3cmci_enable_irq(%struct.s3cmci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.s3cmci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.s3cmci_host* %0, %struct.s3cmci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %11 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %13 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %16 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %14, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %20 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %27 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %32 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @enable_irq(i32 %33)
  br label %40

35:                                               ; preds = %24
  %36 = load %struct.s3cmci_host*, %struct.s3cmci_host** %3, align 8
  %37 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @disable_irq(i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @local_irq_restore(i64 %42)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
