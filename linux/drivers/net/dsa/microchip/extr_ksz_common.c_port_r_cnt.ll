; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_port_r_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_port_r_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.ksz_device*, i32, i64, i32*, i32*)*, i32 (%struct.ksz_device*, i32, i64, i32*)* }
%struct.TYPE_3__ = type { %struct.ksz_port_mib }
%struct.ksz_port_mib = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32)* @port_r_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_r_cnt(%struct.ksz_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_port_mib*, align 8
  %6 = alloca i32*, align 8
  store %struct.ksz_device* %0, %struct.ksz_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %8 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.ksz_port_mib* %13, %struct.ksz_port_mib** %5, align 8
  br label %14

14:                                               ; preds = %22, %2
  %15 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %16 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %19 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %14
  %23 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %24 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32 (%struct.ksz_device*, i32, i64, i32*)*, i32 (%struct.ksz_device*, i32, i64, i32*)** %26, align 8
  %28 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %31 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %34 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %37 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = call i32 %27(%struct.ksz_device* %28, i32 %29, i64 %32, i32* %39)
  %41 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %42 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %42, align 8
  br label %14

45:                                               ; preds = %14
  %46 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %47 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %50 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32* %52, i32** %6, align 8
  br label %53

53:                                               ; preds = %61, %45
  %54 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %55 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %58 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %53
  %62 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %63 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32 (%struct.ksz_device*, i32, i64, i32*, i32*)*, i32 (%struct.ksz_device*, i32, i64, i32*, i32*)** %65, align 8
  %67 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %70 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %74 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %77 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = call i32 %66(%struct.ksz_device* %67, i32 %68, i64 %71, i32* %72, i32* %79)
  %81 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %82 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %53

85:                                               ; preds = %53
  %86 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %87 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
