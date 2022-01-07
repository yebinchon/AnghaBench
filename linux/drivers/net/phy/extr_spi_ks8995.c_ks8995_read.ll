; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_spi_ks8995.c_ks8995_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_spi_ks8995.c_ks8995_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8995_switch = type { i32, i32 }
%struct.spi_transfer = type { i32, i8*, i32* }
%struct.spi_message = type { i32 }

@KS8995_CMD_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks8995_switch*, i8*, i32, i64)* @ks8995_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8995_read(%struct.ks8995_switch* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ks8995_switch*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.spi_transfer], align 16
  %11 = alloca %struct.spi_message, align 4
  %12 = alloca i32, align 4
  store %struct.ks8995_switch* %0, %struct.ks8995_switch** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load %struct.ks8995_switch*, %struct.ks8995_switch** %5, align 8
  %14 = load i32, i32* @KS8995_CMD_READ, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @create_spi_cmd(%struct.ks8995_switch* %13, i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = call i32 @spi_message_init(%struct.spi_message* %11)
  %18 = bitcast [2 x %struct.spi_transfer]* %10 to %struct.spi_transfer**
  %19 = call i32 @memset(%struct.spi_transfer** %18, i32 0, i32 48)
  %20 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 2
  store i32* %9, i32** %21, align 16
  %22 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %22, i32 0, i32 0
  store i32 4, i32* %23, align 16
  %24 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %25 = call i32 @spi_message_add_tail(%struct.spi_transfer* %24, %struct.spi_message* %11)
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 1
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 1
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 1
  %34 = call i32 @spi_message_add_tail(%struct.spi_transfer* %33, %struct.spi_message* %11)
  %35 = load %struct.ks8995_switch*, %struct.ks8995_switch** %5, align 8
  %36 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.ks8995_switch*, %struct.ks8995_switch** %5, align 8
  %39 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @spi_sync(i32 %40, %struct.spi_message* %11)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.ks8995_switch*, %struct.ks8995_switch** %5, align 8
  %43 = getelementptr inbounds %struct.ks8995_switch, %struct.ks8995_switch* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %4
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  br label %52

50:                                               ; preds = %4
  %51 = load i64, i64* %8, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i64 [ %49, %47 ], [ %51, %50 ]
  %54 = trunc i64 %53 to i32
  ret i32 %54
}

declare dso_local i32 @create_spi_cmd(%struct.ks8995_switch*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer**, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
