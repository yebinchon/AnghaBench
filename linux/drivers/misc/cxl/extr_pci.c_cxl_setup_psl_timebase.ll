; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_setup_psl_timebase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_setup_psl_timebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.cxl*)* }
%struct.pci_dev = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"ibm,capp-timebase-sync\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"PSL timebase inactive: OPAL support missing\0A\00", align 1
@CXL_PSL_Control = common dso_local global i32 0, align 4
@CXL_PSL_Control_tb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxl*, %struct.pci_dev*)* @cxl_setup_psl_timebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxl_setup_psl_timebase(%struct.cxl* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.cxl*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.cxl* %0, %struct.cxl** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %6 = load %struct.cxl*, %struct.cxl** %3, align 8
  %7 = getelementptr inbounds %struct.cxl, %struct.cxl* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.device_node* @pnv_pci_get_phb_node(%struct.pci_dev* %8)
  store %struct.device_node* %9, %struct.device_node** %5, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %53

12:                                               ; preds = %2
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = call i32 @of_node_get(%struct.device_node* %13)
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = call i32 @of_get_property(%struct.device_node* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* null)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i32 @of_node_put(%struct.device_node* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = call i32 @dev_info(i32* %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %53

24:                                               ; preds = %12
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = call i32 @of_node_put(%struct.device_node* %25)
  %27 = load %struct.cxl*, %struct.cxl** %3, align 8
  %28 = getelementptr inbounds %struct.cxl, %struct.cxl* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.cxl*)*, i32 (%struct.cxl*)** %32, align 8
  %34 = icmp ne i32 (%struct.cxl*)* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load %struct.cxl*, %struct.cxl** %3, align 8
  %37 = getelementptr inbounds %struct.cxl, %struct.cxl* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.cxl*)*, i32 (%struct.cxl*)** %41, align 8
  %43 = load %struct.cxl*, %struct.cxl** %3, align 8
  %44 = call i32 %42(%struct.cxl* %43)
  br label %45

45:                                               ; preds = %35, %24
  %46 = load %struct.cxl*, %struct.cxl** %3, align 8
  %47 = load i32, i32* @CXL_PSL_Control, align 4
  %48 = call i32 @cxl_p1_write(%struct.cxl* %46, i32 %47, i32 0)
  %49 = load %struct.cxl*, %struct.cxl** %3, align 8
  %50 = load i32, i32* @CXL_PSL_Control, align 4
  %51 = load i32, i32* @CXL_PSL_Control_tb, align 4
  %52 = call i32 @cxl_p1_write(%struct.cxl* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %18, %11
  ret void
}

declare dso_local %struct.device_node* @pnv_pci_get_phb_node(%struct.pci_dev*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @cxl_p1_write(%struct.cxl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
