; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-main.c_ddb_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-main.c_ddb_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i32, i32 }

@IRQF_SHARED = common dso_local global i32 0, align 4
@INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@MSI1_ENABLE = common dso_local global i32 0, align 4
@MSI2_ENABLE = common dso_local global i32 0, align 4
@MSI3_ENABLE = common dso_local global i32 0, align 4
@MSI4_ENABLE = common dso_local global i32 0, align 4
@MSI5_ENABLE = common dso_local global i32 0, align 4
@MSI6_ENABLE = common dso_local global i32 0, align 4
@MSI7_ENABLE = common dso_local global i32 0, align 4
@ddb_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ddbridge\00", align 1
@ddb_irq_handler0 = common dso_local global i32 0, align 4
@ddb_irq_handler1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb*)* @ddb_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddb_irq_init(%struct.ddb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ddb* %0, %struct.ddb** %3, align 8
  %6 = load i32, i32* @IRQF_SHARED, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.ddb*, %struct.ddb** %3, align 8
  %8 = load i32, i32* @INTERRUPT_ENABLE, align 4
  %9 = call i32 @ddbwritel(%struct.ddb* %7, i32 0, i32 %8)
  %10 = load %struct.ddb*, %struct.ddb** %3, align 8
  %11 = load i32, i32* @MSI1_ENABLE, align 4
  %12 = call i32 @ddbwritel(%struct.ddb* %10, i32 0, i32 %11)
  %13 = load %struct.ddb*, %struct.ddb** %3, align 8
  %14 = load i32, i32* @MSI2_ENABLE, align 4
  %15 = call i32 @ddbwritel(%struct.ddb* %13, i32 0, i32 %14)
  %16 = load %struct.ddb*, %struct.ddb** %3, align 8
  %17 = load i32, i32* @MSI3_ENABLE, align 4
  %18 = call i32 @ddbwritel(%struct.ddb* %16, i32 0, i32 %17)
  %19 = load %struct.ddb*, %struct.ddb** %3, align 8
  %20 = load i32, i32* @MSI4_ENABLE, align 4
  %21 = call i32 @ddbwritel(%struct.ddb* %19, i32 0, i32 %20)
  %22 = load %struct.ddb*, %struct.ddb** %3, align 8
  %23 = load i32, i32* @MSI5_ENABLE, align 4
  %24 = call i32 @ddbwritel(%struct.ddb* %22, i32 0, i32 %23)
  %25 = load %struct.ddb*, %struct.ddb** %3, align 8
  %26 = load i32, i32* @MSI6_ENABLE, align 4
  %27 = call i32 @ddbwritel(%struct.ddb* %25, i32 0, i32 %26)
  %28 = load %struct.ddb*, %struct.ddb** %3, align 8
  %29 = load i32, i32* @MSI7_ENABLE, align 4
  %30 = call i32 @ddbwritel(%struct.ddb* %28, i32 0, i32 %29)
  %31 = load %struct.ddb*, %struct.ddb** %3, align 8
  %32 = getelementptr inbounds %struct.ddb, %struct.ddb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci_irq_vector(i32 %33, i32 0)
  %35 = load i32, i32* @ddb_irq_handler, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ddb*, %struct.ddb** %3, align 8
  %38 = bitcast %struct.ddb* %37 to i8*
  %39 = call i32 @request_irq(i32 %34, i32 %35, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %65

44:                                               ; preds = %1
  %45 = load %struct.ddb*, %struct.ddb** %3, align 8
  %46 = getelementptr inbounds %struct.ddb, %struct.ddb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.ddb*, %struct.ddb** %3, align 8
  %51 = load i32, i32* @INTERRUPT_ENABLE, align 4
  %52 = call i32 @ddbwritel(%struct.ddb* %50, i32 268435200, i32 %51)
  %53 = load %struct.ddb*, %struct.ddb** %3, align 8
  %54 = load i32, i32* @MSI1_ENABLE, align 4
  %55 = call i32 @ddbwritel(%struct.ddb* %53, i32 15, i32 %54)
  br label %63

56:                                               ; preds = %44
  %57 = load %struct.ddb*, %struct.ddb** %3, align 8
  %58 = load i32, i32* @INTERRUPT_ENABLE, align 4
  %59 = call i32 @ddbwritel(%struct.ddb* %57, i32 268435215, i32 %58)
  %60 = load %struct.ddb*, %struct.ddb** %3, align 8
  %61 = load i32, i32* @MSI1_ENABLE, align 4
  %62 = call i32 @ddbwritel(%struct.ddb* %60, i32 0, i32 %61)
  br label %63

63:                                               ; preds = %56, %49
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %42
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
