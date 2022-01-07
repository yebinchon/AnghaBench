; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_ports_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_ports_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i32, %struct.ddb_port* }
%struct.ddb_port = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ddb_ports_detach(%struct.ddb* %0) #0 {
  %2 = alloca %struct.ddb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddb_port*, align 8
  store %struct.ddb* %0, %struct.ddb** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %38, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ddb*, %struct.ddb** %2, align 8
  %8 = getelementptr inbounds %struct.ddb, %struct.ddb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %5
  %12 = load %struct.ddb*, %struct.ddb** %2, align 8
  %13 = getelementptr inbounds %struct.ddb, %struct.ddb* %12, i32 0, i32 1
  %14 = load %struct.ddb_port*, %struct.ddb_port** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %14, i64 %16
  store %struct.ddb_port* %17, %struct.ddb_port** %4, align 8
  %18 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %19 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %37 [
    i32 128, label %21
    i32 130, label %34
    i32 129, label %34
  ]

21:                                               ; preds = %11
  %22 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %23 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dvb_input_detach(i32 %26)
  %28 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %29 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dvb_input_detach(i32 %32)
  br label %37

34:                                               ; preds = %11, %11
  %35 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %36 = call i32 @ddb_ci_detach(%struct.ddb_port* %35)
  br label %37

37:                                               ; preds = %11, %34, %21
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %5

41:                                               ; preds = %5
  %42 = load %struct.ddb*, %struct.ddb** %2, align 8
  %43 = call i32 @dvb_unregister_adapters(%struct.ddb* %42)
  ret void
}

declare dso_local i32 @dvb_input_detach(i32) #1

declare dso_local i32 @ddb_ci_detach(%struct.ddb_port*) #1

declare dso_local i32 @dvb_unregister_adapters(%struct.ddb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
