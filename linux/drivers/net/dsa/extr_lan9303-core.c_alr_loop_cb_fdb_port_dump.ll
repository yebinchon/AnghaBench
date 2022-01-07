; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_alr_loop_cb_fdb_port_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_alr_loop_cb_fdb_port_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303 = type { i32 }
%struct.port_fdb_dump_ctx = type { i32, i32 (i32*, i32, i32, i32)*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@LAN9303_ALR_DAT1_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan9303*, i32, i32, i32, i8*)* @alr_loop_cb_fdb_port_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alr_loop_cb_fdb_port_dump(%struct.lan9303* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.lan9303*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.port_fdb_dump_ctx*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lan9303* %0, %struct.lan9303** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.port_fdb_dump_ctx*
  store %struct.port_fdb_dump_ctx* %17, %struct.port_fdb_dump_ctx** %11, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load %struct.port_fdb_dump_ctx*, %struct.port_fdb_dump_ctx** %11, align 8
  %23 = getelementptr inbounds %struct.port_fdb_dump_ctx, %struct.port_fdb_dump_ctx* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @BIT(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 1, i32* %15, align 4
  br label %49

30:                                               ; preds = %5
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @alr_reg_to_mac(i32 %31, i32 %32, i32* %21)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @LAN9303_ALR_DAT1_STATIC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %14, align 4
  %41 = load %struct.port_fdb_dump_ctx*, %struct.port_fdb_dump_ctx** %11, align 8
  %42 = getelementptr inbounds %struct.port_fdb_dump_ctx, %struct.port_fdb_dump_ctx* %41, i32 0, i32 1
  %43 = load i32 (i32*, i32, i32, i32)*, i32 (i32*, i32, i32, i32)** %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.port_fdb_dump_ctx*, %struct.port_fdb_dump_ctx** %11, align 8
  %46 = getelementptr inbounds %struct.port_fdb_dump_ctx, %struct.port_fdb_dump_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %43(i32* %21, i32 0, i32 %44, i32 %47)
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %30, %29
  %50 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %15, align 4
  switch i32 %51, label %53 [
    i32 0, label %52
    i32 1, label %52
  ]

52:                                               ; preds = %49, %49
  ret void

53:                                               ; preds = %49
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @alr_reg_to_mac(i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
