; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-ci.c_ddb_ci_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-ci.c_ddb_ci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_port = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddb_ci_attach(%struct.ddb_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddb_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ddb_port* %0, %struct.ddb_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %8 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %26 [
    i32 131, label %10
    i32 130, label %20
    i32 129, label %20
    i32 128, label %23
  ]

10:                                               ; preds = %2
  %11 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ci_cxd2099_attach(%struct.ddb_port* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %10
  br label %29

20:                                               ; preds = %2, %2
  %21 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %22 = call i32 @ci_xo2_attach(%struct.ddb_port* %21)
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %25 = call i32 @ci_attach(%struct.ddb_port* %24)
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %48

29:                                               ; preds = %23, %20, %19
  %30 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %31 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %48

37:                                               ; preds = %29
  %38 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %39 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %45 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dvb_ca_en50221_init(i32 %43, i32 %46, i32 0, i32 1)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %37, %34, %26, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @ci_cxd2099_attach(%struct.ddb_port*, i32) #1

declare dso_local i32 @ci_xo2_attach(%struct.ddb_port*) #1

declare dso_local i32 @ci_attach(%struct.ddb_port*) #1

declare dso_local i32 @dvb_ca_en50221_init(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
