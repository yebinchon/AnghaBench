; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-ci.c_write_attribute_mem_xo2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-ci.c_write_attribute_mem_xo2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.ddb_ci* }
%struct.ddb_ci = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }

@DDB_CI_EXTERNAL_XO2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32, i32)* @write_attribute_mem_xo2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_attribute_mem_xo2(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dvb_ca_en50221*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ddb_ci*, align 8
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %12, i32 0, i32 0
  %14 = load %struct.ddb_ci*, %struct.ddb_ci** %13, align 8
  store %struct.ddb_ci* %14, %struct.ddb_ci** %9, align 8
  %15 = load %struct.ddb_ci*, %struct.ddb_ci** %9, align 8
  %16 = getelementptr inbounds %struct.ddb_ci, %struct.ddb_ci* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.i2c_adapter* %20, %struct.i2c_adapter** %10, align 8
  %21 = load %struct.ddb_ci*, %struct.ddb_ci** %9, align 8
  %22 = getelementptr inbounds %struct.ddb_ci, %struct.ddb_ci* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DDB_CI_EXTERNAL_XO2, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 18, i32 19
  store i32 %29, i32* %11, align 4
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 32768, %32
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @i2c_write_reg16(%struct.i2c_adapter* %30, i32 %31, i32 %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @i2c_write_reg16(%struct.i2c_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
