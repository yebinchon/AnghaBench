; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_read_dmae.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_read_dmae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.dmae_command = type { i32, i32, i32, i32, i64 }

@wb_data = common dso_local global i32* null, align 8
@DMAE_SRC_GRC = common dso_local global i32 0, align 4
@DMAE_DST_PCI = common dso_local global i32 0, align 4
@wb_comp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DMAE returned failure %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_read_dmae(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dmae_command, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %65, label %15

15:                                               ; preds = %3
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = load i32*, i32** @wb_data, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @bnx2x_sp(%struct.bnx2x* %16, i32 %19)
  store i32* %20, i32** %9, align 8
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = call i64 @CHIP_IS_E1(%struct.bnx2x* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %40, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 %32, 4
  %34 = add nsw i32 %31, %33
  %35 = call i32 @bnx2x_reg_rd_ind(%struct.bnx2x* %30, i32 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %25

43:                                               ; preds = %25
  br label %64

44:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %10, align 4
  %53 = mul nsw i32 %52, 4
  %54 = add nsw i32 %51, %53
  %55 = call i32 @REG_RD(%struct.bnx2x* %50, i32 %54)
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %45

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %43
  br label %96

65:                                               ; preds = %3
  %66 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %67 = load i32, i32* @DMAE_SRC_GRC, align 4
  %68 = load i32, i32* @DMAE_DST_PCI, align 4
  %69 = call i32 @bnx2x_prep_dmae_with_comp(%struct.bnx2x* %66, %struct.dmae_command* %8, i32 %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = ashr i32 %70, 2
  %72 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %8, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %8, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %75 = load i32*, i32** @wb_data, align 8
  %76 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %74, i32* %75)
  %77 = call i32 @U64_LO(i32 %76)
  %78 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %8, i32 0, i32 3
  store i32 %77, i32* %78, align 4
  %79 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %80 = load i32*, i32** @wb_data, align 8
  %81 = call i32 @bnx2x_sp_mapping(%struct.bnx2x* %79, i32* %80)
  %82 = call i32 @U64_HI(i32 %81)
  %83 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %8, i32 0, i32 2
  store i32 %82, i32* %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = getelementptr inbounds %struct.dmae_command, %struct.dmae_command* %8, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %87 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %88 = load i32, i32* @wb_comp, align 4
  %89 = call i32* @bnx2x_sp(%struct.bnx2x* %87, i32 %88)
  %90 = call i32 @bnx2x_issue_dmae_with_comp(%struct.bnx2x* %86, %struct.dmae_command* %8, i32* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %65
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %64, %93, %65
  ret void
}

declare dso_local i32* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_reg_rd_ind(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_prep_dmae_with_comp(%struct.bnx2x*, %struct.dmae_command*, i32, i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @bnx2x_sp_mapping(%struct.bnx2x*, i32*) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @bnx2x_issue_dmae_with_comp(%struct.bnx2x*, %struct.dmae_command*, i32*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
