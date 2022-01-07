; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_sdhci_acpi_get_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-acpi.c_sdhci_acpi_get_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_acpi_uid_slot = type { %struct.sdhci_acpi_slot*, i64, i64 }
%struct.sdhci_acpi_slot = type { i32 }

@sdhci_acpi_uids = common dso_local global %struct.sdhci_acpi_uid_slot* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdhci_acpi_slot* (i8*, i8*)* @sdhci_acpi_get_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdhci_acpi_slot* @sdhci_acpi_get_slot(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.sdhci_acpi_slot*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sdhci_acpi_uid_slot*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.sdhci_acpi_uid_slot*, %struct.sdhci_acpi_uid_slot** @sdhci_acpi_uids, align 8
  store %struct.sdhci_acpi_uid_slot* %7, %struct.sdhci_acpi_uid_slot** %6, align 8
  br label %8

8:                                                ; preds = %45, %2
  %9 = load %struct.sdhci_acpi_uid_slot*, %struct.sdhci_acpi_uid_slot** %6, align 8
  %10 = getelementptr inbounds %struct.sdhci_acpi_uid_slot, %struct.sdhci_acpi_uid_slot* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %8
  %14 = load %struct.sdhci_acpi_uid_slot*, %struct.sdhci_acpi_uid_slot** %6, align 8
  %15 = getelementptr inbounds %struct.sdhci_acpi_uid_slot, %struct.sdhci_acpi_uid_slot* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strcmp(i64 %16, i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %45

21:                                               ; preds = %13
  %22 = load %struct.sdhci_acpi_uid_slot*, %struct.sdhci_acpi_uid_slot** %6, align 8
  %23 = getelementptr inbounds %struct.sdhci_acpi_uid_slot, %struct.sdhci_acpi_uid_slot* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load %struct.sdhci_acpi_uid_slot*, %struct.sdhci_acpi_uid_slot** %6, align 8
  %28 = getelementptr inbounds %struct.sdhci_acpi_uid_slot, %struct.sdhci_acpi_uid_slot* %27, i32 0, i32 0
  %29 = load %struct.sdhci_acpi_slot*, %struct.sdhci_acpi_slot** %28, align 8
  store %struct.sdhci_acpi_slot* %29, %struct.sdhci_acpi_slot** %3, align 8
  br label %49

30:                                               ; preds = %21
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.sdhci_acpi_uid_slot*, %struct.sdhci_acpi_uid_slot** %6, align 8
  %35 = getelementptr inbounds %struct.sdhci_acpi_uid_slot, %struct.sdhci_acpi_uid_slot* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strcmp(i64 %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load %struct.sdhci_acpi_uid_slot*, %struct.sdhci_acpi_uid_slot** %6, align 8
  %42 = getelementptr inbounds %struct.sdhci_acpi_uid_slot, %struct.sdhci_acpi_uid_slot* %41, i32 0, i32 0
  %43 = load %struct.sdhci_acpi_slot*, %struct.sdhci_acpi_slot** %42, align 8
  store %struct.sdhci_acpi_slot* %43, %struct.sdhci_acpi_slot** %3, align 8
  br label %49

44:                                               ; preds = %33, %30
  br label %45

45:                                               ; preds = %44, %20
  %46 = load %struct.sdhci_acpi_uid_slot*, %struct.sdhci_acpi_uid_slot** %6, align 8
  %47 = getelementptr inbounds %struct.sdhci_acpi_uid_slot, %struct.sdhci_acpi_uid_slot* %46, i32 1
  store %struct.sdhci_acpi_uid_slot* %47, %struct.sdhci_acpi_uid_slot** %6, align 8
  br label %8

48:                                               ; preds = %8
  store %struct.sdhci_acpi_slot* null, %struct.sdhci_acpi_slot** %3, align 8
  br label %49

49:                                               ; preds = %48, %40, %26
  %50 = load %struct.sdhci_acpi_slot*, %struct.sdhci_acpi_slot** %3, align 8
  ret %struct.sdhci_acpi_slot* %50
}

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
