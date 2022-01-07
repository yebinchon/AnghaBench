; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_read_pages_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_read_pages_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.reg_addr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32*, i32)* @bnx2x_read_pages_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_read_pages_regs(%struct.bnx2x* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.reg_addr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %20 = call i32* @__bnx2x_get_page_addr_ar(%struct.bnx2x* %19)
  store i32* %20, i32** %11, align 8
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = call i32 @__bnx2x_get_page_reg_num(%struct.bnx2x* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %24 = call i32* @__bnx2x_get_page_write_ar(%struct.bnx2x* %23)
  store i32* %24, i32** %13, align 8
  %25 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %26 = call i32 @__bnx2x_get_page_write_num(%struct.bnx2x* %25)
  store i32 %26, i32* %14, align 4
  %27 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %28 = call %struct.reg_addr* @__bnx2x_get_page_read_ar(%struct.bnx2x* %27)
  store %struct.reg_addr* %28, %struct.reg_addr** %15, align 8
  %29 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %30 = call i32 @__bnx2x_get_page_read_num(%struct.bnx2x* %29)
  store i32 %30, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %106, %3
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %109

35:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %102, %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %105

40:                                               ; preds = %36
  %41 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @REG_WR(%struct.bnx2x* %41, i32 %46, i32 %51)
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %98, %40
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %101

57:                                               ; preds = %53
  %58 = load %struct.reg_addr*, %struct.reg_addr** %15, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.reg_addr, %struct.reg_addr* %58, i64 %60
  %62 = getelementptr inbounds %struct.reg_addr, %struct.reg_addr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @IS_REG_IN_PRESET(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %57
  %68 = load %struct.reg_addr*, %struct.reg_addr** %15, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.reg_addr, %struct.reg_addr* %68, i64 %70
  %72 = getelementptr inbounds %struct.reg_addr, %struct.reg_addr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %18, align 4
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %93, %67
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %18, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load %struct.reg_addr*, %struct.reg_addr** %15, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.reg_addr, %struct.reg_addr* %79, i64 %81
  %83 = getelementptr inbounds %struct.reg_addr, %struct.reg_addr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 %85, 4
  %87 = add nsw i32 %84, %86
  store i32 %87, i32* %17, align 4
  %88 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @REG_RD(%struct.bnx2x* %88, i32 %89)
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %5, align 8
  store i32 %90, i32* %91, align 4
  br label %93

93:                                               ; preds = %78
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %74

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %96, %57
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %53

101:                                              ; preds = %53
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %36

105:                                              ; preds = %36
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %31

109:                                              ; preds = %31
  ret void
}

declare dso_local i32* @__bnx2x_get_page_addr_ar(%struct.bnx2x*) #1

declare dso_local i32 @__bnx2x_get_page_reg_num(%struct.bnx2x*) #1

declare dso_local i32* @__bnx2x_get_page_write_ar(%struct.bnx2x*) #1

declare dso_local i32 @__bnx2x_get_page_write_num(%struct.bnx2x*) #1

declare dso_local %struct.reg_addr* @__bnx2x_get_page_read_ar(%struct.bnx2x*) #1

declare dso_local i32 @__bnx2x_get_page_read_num(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @IS_REG_IN_PRESET(i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
