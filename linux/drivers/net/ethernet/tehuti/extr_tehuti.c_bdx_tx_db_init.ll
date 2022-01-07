; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_tx_db_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_tx_db_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txdb = type { i32, i32, i32, i32, i64 }

@FIFO_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.txdb*, i32)* @bdx_tx_db_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_tx_db_init(%struct.txdb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.txdb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.txdb* %0, %struct.txdb** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @FIFO_SIZE, align 4
  %8 = load i32, i32* %5, align 4
  %9 = add nsw i32 %8, 1
  %10 = shl i32 1, %9
  %11 = mul nsw i32 %7, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @vmalloc(i32 %12)
  %14 = load %struct.txdb*, %struct.txdb** %4, align 8
  %15 = getelementptr inbounds %struct.txdb, %struct.txdb* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.txdb*, %struct.txdb** %4, align 8
  %17 = getelementptr inbounds %struct.txdb, %struct.txdb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %52

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = udiv i64 %25, 4
  %27 = sub i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = load %struct.txdb*, %struct.txdb** %4, align 8
  %30 = getelementptr inbounds %struct.txdb, %struct.txdb* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.txdb*, %struct.txdb** %4, align 8
  %32 = getelementptr inbounds %struct.txdb, %struct.txdb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.txdb*, %struct.txdb** %4, align 8
  %35 = getelementptr inbounds %struct.txdb, %struct.txdb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = load %struct.txdb*, %struct.txdb** %4, align 8
  %41 = getelementptr inbounds %struct.txdb, %struct.txdb* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  %42 = load %struct.txdb*, %struct.txdb** %4, align 8
  %43 = getelementptr inbounds %struct.txdb, %struct.txdb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.txdb*, %struct.txdb** %4, align 8
  %46 = getelementptr inbounds %struct.txdb, %struct.txdb* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.txdb*, %struct.txdb** %4, align 8
  %48 = getelementptr inbounds %struct.txdb, %struct.txdb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.txdb*, %struct.txdb** %4, align 8
  %51 = getelementptr inbounds %struct.txdb, %struct.txdb* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %23, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @vmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
