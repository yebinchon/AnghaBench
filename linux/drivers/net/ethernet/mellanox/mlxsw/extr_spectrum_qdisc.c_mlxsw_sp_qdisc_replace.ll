; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }
%struct.mlxsw_sp_qdisc = type { i64, %struct.mlxsw_sp_qdisc_ops* }
%struct.mlxsw_sp_qdisc_ops = type { i64, i32 (%struct.mlxsw_sp_port.0*, %struct.mlxsw_sp_qdisc.1*, i8*)*, i32 (%struct.mlxsw_sp_port.2*, %struct.mlxsw_sp_qdisc.3*, i8*)*, i32 (%struct.mlxsw_sp_port.4*, %struct.mlxsw_sp_qdisc.5*, i8*)*, i32 (%struct.mlxsw_sp_port.6*, %struct.mlxsw_sp_qdisc.7*)* }
%struct.mlxsw_sp_port.0 = type opaque
%struct.mlxsw_sp_qdisc.1 = type opaque
%struct.mlxsw_sp_port.2 = type opaque
%struct.mlxsw_sp_qdisc.3 = type opaque
%struct.mlxsw_sp_port.4 = type opaque
%struct.mlxsw_sp_qdisc.5 = type opaque
%struct.mlxsw_sp_port.6 = type opaque
%struct.mlxsw_sp_qdisc.7 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, i64, %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc_ops*, i8*)* @mlxsw_sp_qdisc_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_qdisc_replace(%struct.mlxsw_sp_port* %0, i64 %1, %struct.mlxsw_sp_qdisc* %2, %struct.mlxsw_sp_qdisc_ops* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %10 = alloca %struct.mlxsw_sp_qdisc_ops*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.mlxsw_sp_qdisc* %2, %struct.mlxsw_sp_qdisc** %9, align 8
  store %struct.mlxsw_sp_qdisc_ops* %3, %struct.mlxsw_sp_qdisc_ops** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %13, i32 0, i32 1
  %15 = load %struct.mlxsw_sp_qdisc_ops*, %struct.mlxsw_sp_qdisc_ops** %14, align 8
  %16 = icmp ne %struct.mlxsw_sp_qdisc_ops* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %5
  %18 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %18, i32 0, i32 1
  %20 = load %struct.mlxsw_sp_qdisc_ops*, %struct.mlxsw_sp_qdisc_ops** %19, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, %struct.mlxsw_sp_qdisc_ops* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mlxsw_sp_qdisc_ops*, %struct.mlxsw_sp_qdisc_ops** %10, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, %struct.mlxsw_sp_qdisc_ops* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %29 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %30 = call i32 @mlxsw_sp_qdisc_destroy(%struct.mlxsw_sp_port* %28, %struct.mlxsw_sp_qdisc* %29)
  br label %31

31:                                               ; preds = %27, %17, %5
  %32 = load %struct.mlxsw_sp_qdisc_ops*, %struct.mlxsw_sp_qdisc_ops** %10, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, %struct.mlxsw_sp_qdisc_ops* %32, i32 0, i32 1
  %34 = load i32 (%struct.mlxsw_sp_port.0*, %struct.mlxsw_sp_qdisc.1*, i8*)*, i32 (%struct.mlxsw_sp_port.0*, %struct.mlxsw_sp_qdisc.1*, i8*)** %33, align 8
  %35 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %36 = bitcast %struct.mlxsw_sp_port* %35 to %struct.mlxsw_sp_port.0*
  %37 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %38 = bitcast %struct.mlxsw_sp_qdisc* %37 to %struct.mlxsw_sp_qdisc.1*
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 %34(%struct.mlxsw_sp_port.0* %36, %struct.mlxsw_sp_qdisc.1* %38, i8* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %85

44:                                               ; preds = %31
  %45 = load %struct.mlxsw_sp_qdisc_ops*, %struct.mlxsw_sp_qdisc_ops** %10, align 8
  %46 = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, %struct.mlxsw_sp_qdisc_ops* %45, i32 0, i32 2
  %47 = load i32 (%struct.mlxsw_sp_port.2*, %struct.mlxsw_sp_qdisc.3*, i8*)*, i32 (%struct.mlxsw_sp_port.2*, %struct.mlxsw_sp_qdisc.3*, i8*)** %46, align 8
  %48 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %49 = bitcast %struct.mlxsw_sp_port* %48 to %struct.mlxsw_sp_port.2*
  %50 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %51 = bitcast %struct.mlxsw_sp_qdisc* %50 to %struct.mlxsw_sp_qdisc.3*
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 %47(%struct.mlxsw_sp_port.2* %49, %struct.mlxsw_sp_qdisc.3* %51, i8* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %86

57:                                               ; preds = %44
  %58 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %57
  %64 = load %struct.mlxsw_sp_qdisc_ops*, %struct.mlxsw_sp_qdisc_ops** %10, align 8
  %65 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %65, i32 0, i32 1
  store %struct.mlxsw_sp_qdisc_ops* %64, %struct.mlxsw_sp_qdisc_ops** %66, align 8
  %67 = load %struct.mlxsw_sp_qdisc_ops*, %struct.mlxsw_sp_qdisc_ops** %10, align 8
  %68 = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, %struct.mlxsw_sp_qdisc_ops* %67, i32 0, i32 4
  %69 = load i32 (%struct.mlxsw_sp_port.6*, %struct.mlxsw_sp_qdisc.7*)*, i32 (%struct.mlxsw_sp_port.6*, %struct.mlxsw_sp_qdisc.7*)** %68, align 8
  %70 = icmp ne i32 (%struct.mlxsw_sp_port.6*, %struct.mlxsw_sp_qdisc.7*)* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %63
  %72 = load %struct.mlxsw_sp_qdisc_ops*, %struct.mlxsw_sp_qdisc_ops** %10, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, %struct.mlxsw_sp_qdisc_ops* %72, i32 0, i32 4
  %74 = load i32 (%struct.mlxsw_sp_port.6*, %struct.mlxsw_sp_qdisc.7*)*, i32 (%struct.mlxsw_sp_port.6*, %struct.mlxsw_sp_qdisc.7*)** %73, align 8
  %75 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %76 = bitcast %struct.mlxsw_sp_port* %75 to %struct.mlxsw_sp_port.6*
  %77 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %78 = bitcast %struct.mlxsw_sp_qdisc* %77 to %struct.mlxsw_sp_qdisc.7*
  %79 = call i32 %74(%struct.mlxsw_sp_port.6* %76, %struct.mlxsw_sp_qdisc.7* %78)
  br label %80

80:                                               ; preds = %71, %63
  br label %81

81:                                               ; preds = %80, %57
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %84 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  store i32 0, i32* %6, align 4
  br label %112

85:                                               ; preds = %43
  br label %86

86:                                               ; preds = %85, %56
  %87 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %88 = getelementptr inbounds %struct.mlxsw_sp_qdisc, %struct.mlxsw_sp_qdisc* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load %struct.mlxsw_sp_qdisc_ops*, %struct.mlxsw_sp_qdisc_ops** %10, align 8
  %94 = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, %struct.mlxsw_sp_qdisc_ops* %93, i32 0, i32 3
  %95 = load i32 (%struct.mlxsw_sp_port.4*, %struct.mlxsw_sp_qdisc.5*, i8*)*, i32 (%struct.mlxsw_sp_port.4*, %struct.mlxsw_sp_qdisc.5*, i8*)** %94, align 8
  %96 = icmp ne i32 (%struct.mlxsw_sp_port.4*, %struct.mlxsw_sp_qdisc.5*, i8*)* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load %struct.mlxsw_sp_qdisc_ops*, %struct.mlxsw_sp_qdisc_ops** %10, align 8
  %99 = getelementptr inbounds %struct.mlxsw_sp_qdisc_ops, %struct.mlxsw_sp_qdisc_ops* %98, i32 0, i32 3
  %100 = load i32 (%struct.mlxsw_sp_port.4*, %struct.mlxsw_sp_qdisc.5*, i8*)*, i32 (%struct.mlxsw_sp_port.4*, %struct.mlxsw_sp_qdisc.5*, i8*)** %99, align 8
  %101 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %102 = bitcast %struct.mlxsw_sp_port* %101 to %struct.mlxsw_sp_port.4*
  %103 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %104 = bitcast %struct.mlxsw_sp_qdisc* %103 to %struct.mlxsw_sp_qdisc.5*
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 %100(%struct.mlxsw_sp_port.4* %102, %struct.mlxsw_sp_qdisc.5* %104, i8* %105)
  br label %107

107:                                              ; preds = %97, %92, %86
  %108 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %109 = load %struct.mlxsw_sp_qdisc*, %struct.mlxsw_sp_qdisc** %9, align 8
  %110 = call i32 @mlxsw_sp_qdisc_destroy(%struct.mlxsw_sp_port* %108, %struct.mlxsw_sp_qdisc* %109)
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %107, %81
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @mlxsw_sp_qdisc_destroy(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
