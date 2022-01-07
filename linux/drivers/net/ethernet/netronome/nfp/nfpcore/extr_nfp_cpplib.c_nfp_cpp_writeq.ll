; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cpplib.c_nfp_cpp_writeq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cpplib.c_nfp_cpp_writeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_cpp_writeq(%struct.nfp_cpp* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.nfp_cpp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %13 = call i32 @put_unaligned_le64(i32 %11, i32* %12)
  %14 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %18 = call i32 @nfp_cpp_write(%struct.nfp_cpp* %14, i32 %15, i64 %16, i32* %17, i32 32)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %20, 32
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %33

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  br label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i32 [ %27, %26 ], [ %30, %28 ]
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi i32 [ 0, %22 ], [ %32, %31 ]
  ret i32 %34
}

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

declare dso_local i32 @nfp_cpp_write(%struct.nfp_cpp*, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
