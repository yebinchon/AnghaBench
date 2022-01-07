; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bt878.c_bt878_risc_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bt878.c_bt878_risc_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt878 = type { i64, i64, i64, i32, i64, i64 }

@RISC_SYNC = common dso_local global i64 0, align 8
@RISC_SYNC_FM1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"bt878: risc len lines %u, bytes per line %u\0A\00", align 1
@RISC_WRITE = common dso_local global i64 0, align 8
@RISC_WR_SOL = common dso_local global i64 0, align 8
@RISC_WR_EOL = common dso_local global i64 0, align 8
@RISC_IRQ = common dso_local global i64 0, align 8
@RISC_SYNC_VRO = common dso_local global i64 0, align 8
@RISC_JUMP = common dso_local global i64 0, align 8
@BT878_APACK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt878*, i64)* @bt878_risc_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt878_risc_program(%struct.bt878* %0, i64 %1) #0 {
  %3 = alloca %struct.bt878*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bt878* %0, %struct.bt878** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %7 = call i32 (...) @RISC_FLUSH()
  %8 = load i64, i64* @RISC_SYNC, align 8
  %9 = load i64, i64* @RISC_SYNC_FM1, align 8
  %10 = or i64 %8, %9
  %11 = load i64, i64* %4, align 8
  %12 = or i64 %10, %11
  %13 = call i32 @RISC_INSTR(i64 %12)
  %14 = call i32 @RISC_INSTR(i64 0)
  %15 = load %struct.bt878*, %struct.bt878** %3, align 8
  %16 = getelementptr inbounds %struct.bt878, %struct.bt878* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.bt878*, %struct.bt878** %3, align 8
  %19 = getelementptr inbounds %struct.bt878, %struct.bt878* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %20)
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %89, %2
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.bt878*, %struct.bt878** %3, align 8
  %25 = getelementptr inbounds %struct.bt878, %struct.bt878* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %92

28:                                               ; preds = %22
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.bt878*, %struct.bt878** %3, align 8
  %31 = getelementptr inbounds %struct.bt878, %struct.bt878* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = srem i64 %29, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %66, label %35

35:                                               ; preds = %28
  %36 = load i64, i64* @RISC_WRITE, align 8
  %37 = load i64, i64* @RISC_WR_SOL, align 8
  %38 = or i64 %36, %37
  %39 = load i64, i64* @RISC_WR_EOL, align 8
  %40 = or i64 %38, %39
  %41 = load i64, i64* @RISC_IRQ, align 8
  %42 = or i64 %40, %41
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.bt878*, %struct.bt878** %3, align 8
  %45 = getelementptr inbounds %struct.bt878, %struct.bt878* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sdiv i64 %43, %46
  %48 = load %struct.bt878*, %struct.bt878** %3, align 8
  %49 = getelementptr inbounds %struct.bt878, %struct.bt878* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %47, %52
  %54 = load %struct.bt878*, %struct.bt878** %3, align 8
  %55 = getelementptr inbounds %struct.bt878, %struct.bt878* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = srem i64 %53, %57
  %59 = call i64 @RISC_STATUS(i64 %58)
  %60 = or i64 %42, %59
  %61 = load %struct.bt878*, %struct.bt878** %3, align 8
  %62 = getelementptr inbounds %struct.bt878, %struct.bt878* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = or i64 %60, %63
  %65 = call i32 @RISC_INSTR(i64 %64)
  br label %77

66:                                               ; preds = %28
  %67 = load i64, i64* @RISC_WRITE, align 8
  %68 = load i64, i64* @RISC_WR_SOL, align 8
  %69 = or i64 %67, %68
  %70 = load i64, i64* @RISC_WR_EOL, align 8
  %71 = or i64 %69, %70
  %72 = load %struct.bt878*, %struct.bt878** %3, align 8
  %73 = getelementptr inbounds %struct.bt878, %struct.bt878* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %71, %74
  %76 = call i32 @RISC_INSTR(i64 %75)
  br label %77

77:                                               ; preds = %66, %35
  %78 = load %struct.bt878*, %struct.bt878** %3, align 8
  %79 = getelementptr inbounds %struct.bt878, %struct.bt878* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @RISC_INSTR(i64 %82)
  %84 = load %struct.bt878*, %struct.bt878** %3, align 8
  %85 = getelementptr inbounds %struct.bt878, %struct.bt878* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %5, align 8
  br label %89

89:                                               ; preds = %77
  %90 = load i64, i64* %6, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %6, align 8
  br label %22

92:                                               ; preds = %22
  %93 = load i64, i64* @RISC_SYNC, align 8
  %94 = load i64, i64* %4, align 8
  %95 = or i64 %93, %94
  %96 = load i64, i64* @RISC_SYNC_VRO, align 8
  %97 = or i64 %95, %96
  %98 = call i32 @RISC_INSTR(i64 %97)
  %99 = call i32 @RISC_INSTR(i64 0)
  %100 = load i64, i64* @RISC_JUMP, align 8
  %101 = call i32 @RISC_INSTR(i64 %100)
  %102 = load %struct.bt878*, %struct.bt878** %3, align 8
  %103 = getelementptr inbounds %struct.bt878, %struct.bt878* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @RISC_INSTR(i64 %104)
  %106 = load %struct.bt878*, %struct.bt878** %3, align 8
  %107 = getelementptr inbounds %struct.bt878, %struct.bt878* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = shl i64 %108, 16
  %110 = load %struct.bt878*, %struct.bt878** %3, align 8
  %111 = getelementptr inbounds %struct.bt878, %struct.bt878* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = or i64 %109, %112
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* @BT878_APACK_LEN, align 4
  %116 = call i32 @btwrite(i32 %114, i32 %115)
  ret void
}

declare dso_local i32 @RISC_FLUSH(...) #1

declare dso_local i32 @RISC_INSTR(i64) #1

declare dso_local i32 @dprintk(i8*, i64, i64) #1

declare dso_local i64 @RISC_STATUS(i64) #1

declare dso_local i32 @btwrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
