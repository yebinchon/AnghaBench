; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54s_priv = type { i32 }
%struct.spi_transfer = type { i32, i32* }
%struct.spi_message = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p54s_priv*, i32, i8*, i64)* @p54spi_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54spi_spi_write(%struct.p54s_priv* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.p54s_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x %struct.spi_transfer], align 16
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.p54s_priv* %0, %struct.p54s_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 8
  %15 = call i32 @cpu_to_le16(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = call i32 @spi_message_init(%struct.spi_message* %10)
  %17 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 0
  %18 = call i32 @memset(%struct.spi_transfer* %17, i32 0, i32 48)
  %19 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 0
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %19, i32 0, i32 1
  store i32* %11, i32** %20, align 8
  %21 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 0
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 0
  store i32 4, i32* %22, align 16
  %23 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 0
  %24 = call i32 @spi_message_add_tail(%struct.spi_transfer* %23, %struct.spi_message* %10)
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 1
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = and i64 %29, -2
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 1
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 16
  %34 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 1
  %35 = call i32 @spi_message_add_tail(%struct.spi_transfer* %34, %struct.spi_message* %10)
  %36 = load i64, i64* %8, align 8
  %37 = urem i64 %36, 2
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %4
  %40 = load i8*, i8** %7, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpu_to_le16(i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 2
  %48 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %47, i32 0, i32 1
  store i32* %12, i32** %48, align 8
  %49 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 2
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 0
  store i32 4, i32* %50, align 16
  %51 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %9, i64 0, i64 2
  %52 = call i32 @spi_message_add_tail(%struct.spi_transfer* %51, %struct.spi_message* %10)
  br label %53

53:                                               ; preds = %39, %4
  %54 = load %struct.p54s_priv*, %struct.p54s_priv** %5, align 8
  %55 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @spi_sync(i32 %56, %struct.spi_message* %10)
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
