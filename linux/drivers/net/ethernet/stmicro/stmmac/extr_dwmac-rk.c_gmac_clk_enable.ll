; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_gmac_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_gmac_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_priv_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PHY_INTERFACE_MODE_RMII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_priv_data*, i32)* @gmac_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmac_clk_enable(%struct.rk_priv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.rk_priv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rk_priv_data* %0, %struct.rk_priv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %7 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %114

11:                                               ; preds = %2
  %12 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %13 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %113, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PHY_INTERFACE_MODE_RMII, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %22 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IS_ERR(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %28 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_prepare_enable(i32 %29)
  br label %31

31:                                               ; preds = %26, %20
  %32 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %33 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @IS_ERR(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %39 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_prepare_enable(i32 %40)
  br label %42

42:                                               ; preds = %37, %31
  %43 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %44 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @IS_ERR(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %50 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clk_prepare_enable(i32 %51)
  br label %53

53:                                               ; preds = %48, %42
  br label %54

54:                                               ; preds = %53, %16
  %55 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %56 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @IS_ERR(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %54
  %61 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %62 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @clk_prepare_enable(i32 %63)
  br label %65

65:                                               ; preds = %60, %54
  %66 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %67 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @IS_ERR(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %65
  %72 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %73 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @clk_prepare_enable(i32 %74)
  br label %76

76:                                               ; preds = %71, %65
  %77 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %78 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @IS_ERR(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %76
  %83 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %84 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @clk_prepare_enable(i32 %85)
  br label %87

87:                                               ; preds = %82, %76
  %88 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %89 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @IS_ERR(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %87
  %94 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %95 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @clk_prepare_enable(i32 %96)
  br label %98

98:                                               ; preds = %93, %87
  %99 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %100 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @IS_ERR(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %98
  %105 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %106 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @clk_prepare_enable(i32 %107)
  br label %109

109:                                              ; preds = %104, %98
  %110 = call i32 @mdelay(i32 5)
  %111 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %112 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %11
  br label %160

114:                                              ; preds = %2
  %115 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %116 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %159

119:                                              ; preds = %114
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @PHY_INTERFACE_MODE_RMII, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %125 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @clk_disable_unprepare(i32 %126)
  %128 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %129 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @clk_disable_unprepare(i32 %130)
  %132 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %133 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @clk_disable_unprepare(i32 %134)
  br label %136

136:                                              ; preds = %123, %119
  %137 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %138 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @clk_disable_unprepare(i32 %139)
  %141 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %142 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @clk_disable_unprepare(i32 %143)
  %145 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %146 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @clk_disable_unprepare(i32 %147)
  %149 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %150 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @clk_disable_unprepare(i32 %151)
  %153 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %154 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @clk_disable_unprepare(i32 %155)
  %157 = load %struct.rk_priv_data*, %struct.rk_priv_data** %3, align 8
  %158 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %157, i32 0, i32 1
  store i32 0, i32* %158, align 4
  br label %159

159:                                              ; preds = %136, %114
  br label %160

160:                                              ; preds = %159, %113
  ret i32 0
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
