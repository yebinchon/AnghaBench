; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_port_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/smipcie/extr_smipcie-main.c_smi_port_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smi_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.smi_port = type { i32, i32, %struct.smi_dev* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_dev*, %struct.smi_port*, i32)* @smi_port_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_port_attach(%struct.smi_dev* %0, %struct.smi_port* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smi_dev*, align 8
  %6 = alloca %struct.smi_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smi_dev* %0, %struct.smi_dev** %5, align 8
  store %struct.smi_port* %1, %struct.smi_port** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.smi_dev*, %struct.smi_dev** %5, align 8
  %11 = load %struct.smi_port*, %struct.smi_port** %6, align 8
  %12 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %11, i32 0, i32 2
  store %struct.smi_dev* %10, %struct.smi_dev** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.smi_port*, %struct.smi_port** %6, align 8
  %15 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.smi_dev*, %struct.smi_dev** %5, align 8
  %20 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  br label %30

24:                                               ; preds = %3
  %25 = load %struct.smi_dev*, %struct.smi_dev** %5, align 8
  %26 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i32 [ %23, %18 ], [ %29, %24 ]
  %32 = load %struct.smi_port*, %struct.smi_port** %6, align 8
  %33 = getelementptr inbounds %struct.smi_port, %struct.smi_port* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.smi_dev*, %struct.smi_dev** %5, align 8
  %38 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  br label %48

42:                                               ; preds = %30
  %43 = load %struct.smi_dev*, %struct.smi_dev** %5, align 8
  %44 = getelementptr inbounds %struct.smi_dev, %struct.smi_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  br label %48

48:                                               ; preds = %42, %36
  %49 = phi i32 [ %41, %36 ], [ %47, %42 ]
  store i32 %49, i32* %9, align 4
  %50 = load %struct.smi_port*, %struct.smi_port** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @smi_port_init(%struct.smi_port* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %77

57:                                               ; preds = %48
  %58 = load %struct.smi_port*, %struct.smi_port** %6, align 8
  %59 = call i32 @smi_dvb_init(%struct.smi_port* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %73

63:                                               ; preds = %57
  %64 = load %struct.smi_port*, %struct.smi_port** %6, align 8
  %65 = call i32 @smi_fe_init(%struct.smi_port* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %70

69:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %77

70:                                               ; preds = %68
  %71 = load %struct.smi_port*, %struct.smi_port** %6, align 8
  %72 = call i32 @smi_dvb_exit(%struct.smi_port* %71)
  br label %73

73:                                               ; preds = %70, %62
  %74 = load %struct.smi_port*, %struct.smi_port** %6, align 8
  %75 = call i32 @smi_port_exit(%struct.smi_port* %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %69, %55
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @smi_port_init(%struct.smi_port*, i32) #1

declare dso_local i32 @smi_dvb_init(%struct.smi_port*) #1

declare dso_local i32 @smi_fe_init(%struct.smi_port*) #1

declare dso_local i32 @smi_dvb_exit(%struct.smi_port*) #1

declare dso_local i32 @smi_port_exit(%struct.smi_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
