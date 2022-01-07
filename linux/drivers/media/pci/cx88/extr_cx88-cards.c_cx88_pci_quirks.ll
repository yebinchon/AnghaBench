; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_cx88_pci_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-cards.c_cx88_pci_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@UNSET = common dso_local global i32 0, align 4
@pci_pci_problems = common dso_local global i32 0, align 4
@PCIPCI_TRITON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"quirk: PCIPCI_TRITON -- set TBFX\0A\00", align 1
@CX88X_EN_TBFX = common dso_local global i32 0, align 4
@PCIPCI_NATOMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"quirk: PCIPCI_NATOMA -- set TBFX\0A\00", align 1
@PCIPCI_VIAETBF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"quirk: PCIPCI_VIAETBF -- set TBFX\0A\00", align 1
@PCIPCI_VSFX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"quirk: PCIPCI_VSFX -- set VSFX\0A\00", align 1
@CX88X_EN_VSFX = common dso_local global i32 0, align 4
@latency = common dso_local global i32 0, align 4
@CX88X_DEVCTRL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"setting pci latency timer to %d\0A\00", align 1
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@PCIPCI_ALIMAGIK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.pci_dev*)* @cx88_pci_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx88_pci_quirks(i8* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %8 = load i32, i32* @UNSET, align 4
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @pci_pci_problems, align 4
  %10 = load i32, i32* @PCIPCI_TRITON, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @CX88X_EN_TBFX, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @pci_pci_problems, align 4
  %20 = load i32, i32* @PCIPCI_NATOMA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @CX88X_EN_TBFX, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* @pci_pci_problems, align 4
  %30 = load i32, i32* @PCIPCI_VIAETBF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @CX88X_EN_TBFX, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @pci_pci_problems, align 4
  %40 = load i32, i32* @PCIPCI_VSFX, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* @CX88X_EN_VSFX, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* @latency, align 4
  %50 = load i32, i32* @UNSET, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @latency, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = load i32, i32* @CX88X_DEVCTRL, align 4
  %60 = call i32 @pci_read_config_byte(%struct.pci_dev* %58, i32 %59, i32* %7)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load i32, i32* @CX88X_DEVCTRL, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @pci_write_config_byte(%struct.pci_dev* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %57, %54
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @UNSET, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* @latency, align 4
  %74 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %77 = load i32, i32* @latency, align 4
  %78 = call i32 @pci_write_config_byte(%struct.pci_dev* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %68
  ret i32 0
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
