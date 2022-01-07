; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_ports_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_ports_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*)* @mlxsw_sp_ports_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_ports_create(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @mlxsw_core_max_ports(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 8, %16
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kzalloc(i64 %18, i32 %19)
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %127

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @kmalloc_array(i32 %31, i32 4, i32 %32)
  %34 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %121

43:                                               ; preds = %30
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %45 = call i32 @mlxsw_sp_cpu_port_create(%struct.mlxsw_sp* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %116

49:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %89, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %92

54:                                               ; preds = %50
  %55 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 -1, i32* %60, align 4
  %61 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @mlxsw_sp_port_module_info_get(%struct.mlxsw_sp* %61, i32 %62, i32* %5, i32* %6, i32* %7)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %94

67:                                               ; preds = %54
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %89

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %74 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @mlxsw_sp_port_create(%struct.mlxsw_sp* %79, i32 %80, i32 0, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %71
  br label %93

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88, %70
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %50

92:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %127

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93, %66
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %110, %94
  %98 = load i32, i32* %9, align 4
  %99 = icmp sge i32 %98, 1
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @mlxsw_sp_port_created(%struct.mlxsw_sp* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @mlxsw_sp_port_remove(%struct.mlxsw_sp* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %100
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %9, align 4
  br label %97

113:                                              ; preds = %97
  %114 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %115 = call i32 @mlxsw_sp_cpu_port_remove(%struct.mlxsw_sp* %114)
  br label %116

116:                                              ; preds = %113, %48
  %117 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %118 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @kfree(i32* %119)
  br label %121

121:                                              ; preds = %116, %40
  %122 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %123 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @kfree(i32* %124)
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %121, %92, %27
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @mlxsw_core_max_ports(i32) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_cpu_port_create(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_port_module_info_get(%struct.mlxsw_sp*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @mlxsw_sp_port_create(%struct.mlxsw_sp*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlxsw_sp_port_created(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_port_remove(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_cpu_port_remove(%struct.mlxsw_sp*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
