; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_reset_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_reset_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32 }

@__I40E_REINIT_REQUESTED = common dso_local global i32 0, align 4
@__I40E_PF_RESET_REQUESTED = common dso_local global i32 0, align 4
@__I40E_CORE_RESET_REQUESTED = common dso_local global i32 0, align 4
@__I40E_GLOBAL_RESET_REQUESTED = common dso_local global i32 0, align 4
@__I40E_DOWN_REQUESTED = common dso_local global i32 0, align 4
@__I40E_RESET_INTR_RECEIVED = common dso_local global i32 0, align 4
@__I40E_DOWN = common dso_local global i32 0, align 4
@__I40E_CONFIG_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_reset_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_reset_subtask(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @__I40E_REINIT_REQUESTED, align 4
  %5 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %6 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @test_bit(i32 %4, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i32, i32* @__I40E_REINIT_REQUESTED, align 4
  %12 = call i32 @BIT(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @__I40E_REINIT_REQUESTED, align 4
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clear_bit(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %10, %1
  %21 = load i32, i32* @__I40E_PF_RESET_REQUESTED, align 4
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %23 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @test_bit(i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load i32, i32* @__I40E_PF_RESET_REQUESTED, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @__I40E_PF_RESET_REQUESTED, align 4
  %33 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %34 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clear_bit(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %27, %20
  %38 = load i32, i32* @__I40E_CORE_RESET_REQUESTED, align 4
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @test_bit(i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load i32, i32* @__I40E_CORE_RESET_REQUESTED, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @__I40E_CORE_RESET_REQUESTED, align 4
  %50 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %51 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clear_bit(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %44, %37
  %55 = load i32, i32* @__I40E_GLOBAL_RESET_REQUESTED, align 4
  %56 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %57 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @test_bit(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load i32, i32* @__I40E_GLOBAL_RESET_REQUESTED, align 4
  %63 = call i32 @BIT(i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @__I40E_GLOBAL_RESET_REQUESTED, align 4
  %67 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %68 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clear_bit(i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %61, %54
  %72 = load i32, i32* @__I40E_DOWN_REQUESTED, align 4
  %73 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %74 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @test_bit(i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %71
  %79 = load i32, i32* @__I40E_DOWN_REQUESTED, align 4
  %80 = call i32 @BIT(i32 %79)
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* @__I40E_DOWN_REQUESTED, align 4
  %84 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %85 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @clear_bit(i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %78, %71
  %89 = load i32, i32* @__I40E_RESET_INTR_RECEIVED, align 4
  %90 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %91 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @test_bit(i32 %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %97 = call i32 @i40e_prep_for_reset(%struct.i40e_pf* %96, i32 0)
  %98 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %99 = call i32 @i40e_reset(%struct.i40e_pf* %98)
  %100 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %101 = call i32 @i40e_rebuild(%struct.i40e_pf* %100, i32 0, i32 0)
  br label %102

102:                                              ; preds = %95, %88
  %103 = load i32, i32* %3, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %102
  %106 = load i32, i32* @__I40E_DOWN, align 4
  %107 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %108 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @test_bit(i32 %106, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %105
  %113 = load i32, i32* @__I40E_CONFIG_BUSY, align 4
  %114 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %115 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @test_bit(i32 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %112
  %120 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %121 = load i32, i32* %3, align 4
  %122 = call i32 @i40e_do_reset(%struct.i40e_pf* %120, i32 %121, i32 0)
  br label %123

123:                                              ; preds = %119, %112, %105, %102
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @i40e_prep_for_reset(%struct.i40e_pf*, i32) #1

declare dso_local i32 @i40e_reset(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_rebuild(%struct.i40e_pf*, i32, i32) #1

declare dso_local i32 @i40e_do_reset(%struct.i40e_pf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
