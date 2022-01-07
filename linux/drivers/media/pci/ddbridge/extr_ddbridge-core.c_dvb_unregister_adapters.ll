; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_dvb_unregister_adapters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_dvb_unregister_adapters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { %struct.ddb_port*, %struct.TYPE_4__* }
%struct.ddb_port = type { %struct.ddb_dvb* }
%struct.ddb_dvb = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb*)* @dvb_unregister_adapters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_unregister_adapters(%struct.ddb* %0) #0 {
  %2 = alloca %struct.ddb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddb_port*, align 8
  %5 = alloca %struct.ddb_dvb*, align 8
  store %struct.ddb* %0, %struct.ddb** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %56, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.ddb*, %struct.ddb** %2, align 8
  %9 = getelementptr inbounds %struct.ddb, %struct.ddb* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %7, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %6
  %18 = load %struct.ddb*, %struct.ddb** %2, align 8
  %19 = getelementptr inbounds %struct.ddb, %struct.ddb* %18, i32 0, i32 0
  %20 = load %struct.ddb_port*, %struct.ddb_port** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %20, i64 %22
  store %struct.ddb_port* %23, %struct.ddb_port** %4, align 8
  %24 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %25 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %24, i32 0, i32 0
  %26 = load %struct.ddb_dvb*, %struct.ddb_dvb** %25, align 8
  %27 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %26, i64 0
  store %struct.ddb_dvb* %27, %struct.ddb_dvb** %5, align 8
  %28 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %29 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %34 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dvb_unregister_adapter(i32 %35)
  br label %37

37:                                               ; preds = %32, %17
  %38 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %39 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.ddb_port*, %struct.ddb_port** %4, align 8
  %41 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %40, i32 0, i32 0
  %42 = load %struct.ddb_dvb*, %struct.ddb_dvb** %41, align 8
  %43 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %42, i64 1
  store %struct.ddb_dvb* %43, %struct.ddb_dvb** %5, align 8
  %44 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %45 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %50 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dvb_unregister_adapter(i32 %51)
  br label %53

53:                                               ; preds = %48, %37
  %54 = load %struct.ddb_dvb*, %struct.ddb_dvb** %5, align 8
  %55 = getelementptr inbounds %struct.ddb_dvb, %struct.ddb_dvb* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %6

59:                                               ; preds = %6
  ret void
}

declare dso_local i32 @dvb_unregister_adapter(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
