; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_alu_imm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/bpf/extr_jit.c_wrp_alu_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_prog = type { i32 }

@ALU_OP_AND = common dso_local global i32 0, align 4
@ALU_OP_OR = common dso_local global i32 0, align 4
@ALU_OP_XOR = common dso_local global i32 0, align 4
@ALU_OP_NOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_prog*, i32, i32, i32)* @wrp_alu_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wrp_alu_imm(%struct.nfp_prog* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfp_prog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfp_prog* %0, %struct.nfp_prog** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @ALU_OP_AND, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @reg_both(i32 %18)
  %20 = call i32 @wrp_immed(%struct.nfp_prog* %17, i32 %19, i32 0)
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = xor i32 %25, -1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %21
  br label %92

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @ALU_OP_OR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  %36 = xor i32 %35, -1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @reg_both(i32 %40)
  %42 = call i32 @wrp_immed(%struct.nfp_prog* %39, i32 %41, i32 -1)
  br label %43

43:                                               ; preds = %38, %34
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = xor i32 %47, -1
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46, %43
  br label %92

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @ALU_OP_XOR, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = xor i32 %57, -1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @reg_both(i32 %62)
  %64 = call i32 (...) @reg_none()
  %65 = load i32, i32* @ALU_OP_NOT, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @reg_b(i32 %66)
  %68 = call i32 @emit_alu(%struct.nfp_prog* %61, i32 %63, i32 %64, i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %60, %56
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = xor i32 %73, -1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72, %69
  br label %92

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %52
  %79 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %82 = call i32 @imm_b(%struct.nfp_prog* %81)
  %83 = call i32 @ur_load_imm_any(%struct.nfp_prog* %79, i32 %80, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load %struct.nfp_prog*, %struct.nfp_prog** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @reg_both(i32 %85)
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @reg_a(i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @emit_alu(%struct.nfp_prog* %84, i32 %86, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %78, %76, %50, %28
  ret void
}

declare dso_local i32 @wrp_immed(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @reg_both(i32) #1

declare dso_local i32 @emit_alu(%struct.nfp_prog*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_none(...) #1

declare dso_local i32 @reg_b(i32) #1

declare dso_local i32 @ur_load_imm_any(%struct.nfp_prog*, i32, i32) #1

declare dso_local i32 @imm_b(%struct.nfp_prog*) #1

declare dso_local i32 @reg_a(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
