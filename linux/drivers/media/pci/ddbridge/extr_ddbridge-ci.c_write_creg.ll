; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-ci.c_write_creg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-ci.c_write_creg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_ci = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }

@DDB_CI_EXTERNAL_XO2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ddb_ci*, i32, i32)* @write_creg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_creg(%struct.ddb_ci* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ddb_ci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca i32, align 4
  store %struct.ddb_ci* %0, %struct.ddb_ci** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ddb_ci*, %struct.ddb_ci** %4, align 8
  %10 = getelementptr inbounds %struct.ddb_ci, %struct.ddb_ci* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %7, align 8
  %15 = load %struct.ddb_ci*, %struct.ddb_ci** %4, align 8
  %16 = getelementptr inbounds %struct.ddb_ci, %struct.ddb_ci* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DDB_CI_EXTERNAL_XO2, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 18, i32 19
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ddb_ci*, %struct.ddb_ci** %4, align 8
  %25 = getelementptr inbounds %struct.ddb_ci, %struct.ddb_ci* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.ddb_ci*, %struct.ddb_ci** %4, align 8
  %35 = getelementptr inbounds %struct.ddb_ci, %struct.ddb_ci* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 8
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ddb_ci*, %struct.ddb_ci** %4, align 8
  %41 = getelementptr inbounds %struct.ddb_ci, %struct.ddb_ci* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @i2c_write_reg(%struct.i2c_adapter* %38, i32 %39, i32 2, i32 %44)
  ret i32 %45
}

declare dso_local i32 @i2c_write_reg(%struct.i2c_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
