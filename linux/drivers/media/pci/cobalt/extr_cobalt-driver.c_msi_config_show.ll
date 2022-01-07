; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_msi_config_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_msi_config_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"MSI %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"MSI multiple message: Capable %u. Enable %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"MSI: 64-bit address capable\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"MSI: Address 0x%08x%08x. Data 0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"MSI: Address 0x%08x. Data 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cobalt*, %struct.pci_dev*)* @msi_config_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msi_config_show(%struct.cobalt* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.cobalt*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cobalt* %0, %struct.cobalt** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_read_config_word(%struct.pci_dev* %9, i32 82, i32* %5)
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 1
  %19 = and i32 %18, 7
  %20 = shl i32 1, %19
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 4
  %23 = and i32 %22, 7
  %24 = shl i32 1, %23
  %25 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %20, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %2
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = call i32 @pci_read_config_dword(%struct.pci_dev* %32, i32 84, i32* %7)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i32 @pci_read_config_dword(%struct.pci_dev* %34, i32 88, i32* %8)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call i32 @pci_read_config_word(%struct.pci_dev* %36, i32 92, i32* %6)
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  br label %50

46:                                               ; preds = %31
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i8*, ...) @cobalt_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cobalt_info(i8*, ...) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
