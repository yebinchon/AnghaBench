; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_port_match_link_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_port_match_link_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_port = type { i64, %struct.TYPE_2__*, %struct.ddb* }
%struct.TYPE_2__ = type { i64 }
%struct.ddb = type { i64, %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_port*)* @ddb_port_match_link_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddb_port_match_link_i2c(%struct.ddb_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ddb_port*, align 8
  %4 = alloca %struct.ddb*, align 8
  %5 = alloca i64, align 8
  store %struct.ddb_port* %0, %struct.ddb_port** %3, align 8
  %6 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %7 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %6, i32 0, i32 2
  %8 = load %struct.ddb*, %struct.ddb** %7, align 8
  store %struct.ddb* %8, %struct.ddb** %4, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %36, %1
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.ddb*, %struct.ddb** %4, align 8
  %12 = getelementptr inbounds %struct.ddb, %struct.ddb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = load %struct.ddb*, %struct.ddb** %4, align 8
  %17 = getelementptr inbounds %struct.ddb, %struct.ddb* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %24 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = load %struct.ddb*, %struct.ddb** %4, align 8
  %29 = getelementptr inbounds %struct.ddb, %struct.ddb* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %34 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %33, i32 0, i32 1
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %34, align 8
  store i32 1, i32* %2, align 4
  br label %40

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %9

39:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
