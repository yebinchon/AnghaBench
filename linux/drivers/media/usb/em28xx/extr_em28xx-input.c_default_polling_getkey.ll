; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_default_polling_getkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_default_polling_getkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_IR = type { i32, %struct.em28xx* }
%struct.em28xx = type { i32 (%struct.em28xx*, i32, i32, i32*, i32)* }
%struct.em28xx_ir_poll_result = type { i32, i32, i32, i32 }

@EM28XX_R45_IR = common dso_local global i32 0, align 4
@RC_PROTO_RC5 = common dso_local global i32 0, align 4
@RC_PROTO_NEC = common dso_local global i32 0, align 4
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx_IR*, %struct.em28xx_ir_poll_result*)* @default_polling_getkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_polling_getkey(%struct.em28xx_IR* %0, %struct.em28xx_ir_poll_result* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.em28xx_IR*, align 8
  %5 = alloca %struct.em28xx_ir_poll_result*, align 8
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  store %struct.em28xx_IR* %0, %struct.em28xx_IR** %4, align 8
  store %struct.em28xx_ir_poll_result* %1, %struct.em28xx_ir_poll_result** %5, align 8
  %9 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %10 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %9, i32 0, i32 1
  %11 = load %struct.em28xx*, %struct.em28xx** %10, align 8
  store %struct.em28xx* %11, %struct.em28xx** %6, align 8
  %12 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 12, i1 false)
  %13 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %14 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %13, i32 0, i32 0
  %15 = load i32 (%struct.em28xx*, i32, i32, i32*, i32)*, i32 (%struct.em28xx*, i32, i32, i32*, i32)** %14, align 8
  %16 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %17 = load i32, i32* @EM28XX_R45_IR, align 4
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %19 = call i32 %15(%struct.em28xx* %16, i32 0, i32 %17, i32* %18, i32 12)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %73

24:                                               ; preds = %2
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 7
  %28 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %29 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 127
  %33 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %34 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %36 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %60 [
    i32 128, label %38
    i32 129, label %49
  ]

38:                                               ; preds = %24
  %39 = load i32, i32* @RC_PROTO_RC5, align 4
  %40 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %41 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @RC_SCANCODE_RC5(i32 %43, i32 %45)
  %47 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %48 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %72

49:                                               ; preds = %24
  %50 = load i32, i32* @RC_PROTO_NEC, align 4
  %51 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %52 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @RC_SCANCODE_NEC(i32 %54, i32 %56)
  %58 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %59 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %72

60:                                               ; preds = %24
  %61 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %62 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %63 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %66, %68
  %70 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %71 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %60, %49, %38
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %22
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RC_SCANCODE_RC5(i32, i32) #2

declare dso_local i32 @RC_SCANCODE_NEC(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
