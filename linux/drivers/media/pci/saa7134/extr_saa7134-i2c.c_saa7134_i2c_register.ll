; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-i2c.c_saa7134_i2c_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-i2c.c_saa7134_i2c_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.saa7134_dev*, i32, %struct.TYPE_8__ }
%struct.saa7134_dev = type { %struct.TYPE_10__, i32, %struct.TYPE_11__, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32* }

@saa7134_adap_template = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@saa7134_client_template = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@i2c_scan = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_i2c_register(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %3 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %4 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %3, i32 0, i32 2
  %5 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_11__* @saa7134_adap_template to i8*), i64 24, i1 false)
  %6 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %7 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %6, i32 0, i32 5
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %11 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store i32* %9, i32** %13, align 8
  %14 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %15 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %19 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strscpy(i32 %17, i32 %20, i32 4)
  %22 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %23 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %24 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store %struct.saa7134_dev* %22, %struct.saa7134_dev** %25, align 8
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %27 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %26, i32 0, i32 2
  %28 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %29 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %28, i32 0, i32 3
  %30 = call i32 @i2c_set_adapdata(%struct.TYPE_11__* %27, i32* %29)
  %31 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %32 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %31, i32 0, i32 2
  %33 = call i32 @i2c_add_adapter(%struct.TYPE_11__* %32)
  %34 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %35 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %34, i32 0, i32 0
  %36 = bitcast %struct.TYPE_10__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 bitcast (%struct.TYPE_10__* @saa7134_client_template to i8*), i64 8, i1 false)
  %37 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %38 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %37, i32 0, i32 2
  %39 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %40 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %41, align 8
  %42 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %43 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %44 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @saa7134_i2c_eeprom(%struct.saa7134_dev* %42, i32 %45, i32 4)
  %47 = load i64, i64* @i2c_scan, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %1
  %50 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %51 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %50, i32 0, i32 0
  %52 = call i32 @do_i2c_scan(%struct.TYPE_10__* %51)
  br label %53

53:                                               ; preds = %49, %1
  %54 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %55 = call i32 @saa7134_probe_i2c_ir(%struct.saa7134_dev* %54)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strscpy(i32, i32, i32) #2

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_11__*, i32*) #2

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_11__*) #2

declare dso_local i32 @saa7134_i2c_eeprom(%struct.saa7134_dev*, i32, i32) #2

declare dso_local i32 @do_i2c_scan(%struct.TYPE_10__*) #2

declare dso_local i32 @saa7134_probe_i2c_ir(%struct.saa7134_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
