; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_op_lower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_farsync.c_fst_op_lower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_port_info = type { i64, i64, i32 }

@v24OpSts = common dso_local global i32* null, align 8
@SETV24O = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_port_info*, i32)* @fst_op_lower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_op_lower(%struct.fst_port_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fst_port_info*, align 8
  %4 = alloca i32, align 4
  store %struct.fst_port_info* %0, %struct.fst_port_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %8 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i32*, i32** @v24OpSts, align 8
  %11 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %12 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @FST_RDL(i32 %9, i32 %15)
  %17 = and i32 %6, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %19 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32*, i32** @v24OpSts, align 8
  %22 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %23 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @FST_WRL(i32 %20, i32 %26, i32 %27)
  %29 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %30 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %35 = load i32, i32* @SETV24O, align 4
  %36 = call i32 @fst_issue_cmd(%struct.fst_port_info* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %2
  ret void
}

declare dso_local i32 @FST_RDL(i32, i32) #1

declare dso_local i32 @FST_WRL(i32, i32, i32) #1

declare dso_local i32 @fst_issue_cmd(%struct.fst_port_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
