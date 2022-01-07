; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_minimal.c_mlxsw_m_ports_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_minimal.c_mlxsw_m_ports_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_m = type { i32*, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_m*)* @mlxsw_m_ports_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_m_ports_create(%struct.mlxsw_m* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_m*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlxsw_m* %0, %struct.mlxsw_m** %3, align 8
  %8 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mlxsw_core_max_ports(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kcalloc(i32 %13, i32 4, i32 %14)
  %16 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %17 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %19 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %160

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32* @kmalloc_array(i32 %26, i32 4, i32 %27)
  %29 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %30 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %32 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %154

38:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %50, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %45 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 -1, i32* %49, align 4
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %39

53:                                               ; preds = %39
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %66, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @mlxsw_m_port_module_map(%struct.mlxsw_m* %59, i32 %60, i32* %5)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %136

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %54

69:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %101, %69
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %73 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %70
  %77 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %78 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %76
  %86 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %87 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %88 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @mlxsw_m_port_create(%struct.mlxsw_m* %86, i32 %93, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %105

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %76
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %70

104:                                              ; preds = %70
  store i32 0, i32* %2, align 4
  br label %160

105:                                              ; preds = %98
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %131, %105
  %109 = load i32, i32* %6, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %108
  %112 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %113 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %111
  %121 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %122 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %123 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @mlxsw_m_port_remove(%struct.mlxsw_m* %121, i32 %128)
  br label %130

130:                                              ; preds = %120, %111
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %6, align 4
  br label %108

134:                                              ; preds = %108
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %134, %64
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %146, %136
  %140 = load i32, i32* %6, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @mlxsw_m_port_module_unmap(%struct.mlxsw_m* %143, i32 %144)
  br label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %6, align 4
  br label %139

149:                                              ; preds = %139
  %150 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %151 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @kfree(i32* %152)
  br label %154

154:                                              ; preds = %149, %35
  %155 = load %struct.mlxsw_m*, %struct.mlxsw_m** %3, align 8
  %156 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @kfree(i32* %157)
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %154, %104, %22
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @mlxsw_core_max_ports(i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @mlxsw_m_port_module_map(%struct.mlxsw_m*, i32, i32*) #1

declare dso_local i32 @mlxsw_m_port_create(%struct.mlxsw_m*, i32, i32) #1

declare dso_local i32 @mlxsw_m_port_remove(%struct.mlxsw_m*, i32) #1

declare dso_local i32 @mlxsw_m_port_module_unmap(%struct.mlxsw_m*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
