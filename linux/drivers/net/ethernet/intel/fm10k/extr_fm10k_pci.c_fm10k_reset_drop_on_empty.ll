; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_reset_drop_on_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_reset_drop_on_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i32, %struct.fm10k_hw }
%struct.fm10k_hw = type { i32 }

@FM10K_RXDCTL_WRITE_BACK_MIN_DELAY = common dso_local global i32 0, align 4
@FM10K_EICR_MAXHOLDTIME = common dso_local global i32 0, align 4
@FM10K_MAX_QUEUES_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*, i32)* @fm10k_reset_drop_on_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_reset_drop_on_empty(%struct.fm10k_intfc* %0, i32 %1) #0 {
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %10 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %9, i32 0, i32 2
  store %struct.fm10k_hw* %10, %struct.fm10k_hw** %5, align 8
  %11 = load i32, i32* @FM10K_RXDCTL_WRITE_BACK_MIN_DELAY, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FM10K_EICR_MAXHOLDTIME, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %88

17:                                               ; preds = %2
  %18 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %19 = call i32 @FM10K_MAXHOLDQ(i32 7)
  %20 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %25 = call i32 @FM10K_MAXHOLDQ(i32 7)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %17
  store i32 255, i32* %8, align 4
  br label %29

29:                                               ; preds = %87, %71, %28
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @BIT(i32 31)
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @FM10K_MAX_QUEUES_PF, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %40 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @FM10K_RXDCTL(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %43, i32 %45, i32 %46)
  br label %53

48:                                               ; preds = %34
  %49 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %50 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %38
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %55, 2
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, -32
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %88

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %8, align 4
  %69 = srem i32 %67, 32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %29

72:                                               ; preds = %66
  %73 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sdiv i32 %74, 32
  %76 = call i32 @FM10K_MAXHOLDQ(i32 %75)
  %77 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %73, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sdiv i32 %82, 32
  %84 = call i32 @FM10K_MAXHOLDQ(i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %81, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %80, %72
  br label %29

88:                                               ; preds = %16, %65
  ret void
}

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @FM10K_MAXHOLDQ(i32) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @FM10K_RXDCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
