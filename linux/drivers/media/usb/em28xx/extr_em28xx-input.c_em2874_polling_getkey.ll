; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em2874_polling_getkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em2874_polling_getkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_IR = type { i32, %struct.em28xx* }
%struct.em28xx = type { i32 (%struct.em28xx*, i32, i32, i32*, i32)* }
%struct.em28xx_ir_poll_result = type { i32, i32, i32, i32 }

@EM2874_R51_IR = common dso_local global i32 0, align 4
@RC_PROTO_RC5 = common dso_local global i32 0, align 4
@RC_PROTO_RC6_0 = common dso_local global i32 0, align 4
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx_IR*, %struct.em28xx_ir_poll_result*)* @em2874_polling_getkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em2874_polling_getkey(%struct.em28xx_IR* %0, %struct.em28xx_ir_poll_result* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.em28xx_IR*, align 8
  %5 = alloca %struct.em28xx_ir_poll_result*, align 8
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [5 x i32], align 16
  store %struct.em28xx_IR* %0, %struct.em28xx_IR** %4, align 8
  store %struct.em28xx_ir_poll_result* %1, %struct.em28xx_ir_poll_result** %5, align 8
  %9 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %10 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %9, i32 0, i32 1
  %11 = load %struct.em28xx*, %struct.em28xx** %10, align 8
  store %struct.em28xx* %11, %struct.em28xx** %6, align 8
  %12 = bitcast [5 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 20, i1 false)
  %13 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %14 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %13, i32 0, i32 0
  %15 = load i32 (%struct.em28xx*, i32, i32, i32*, i32)*, i32 (%struct.em28xx*, i32, i32, i32*, i32)** %14, align 8
  %16 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %17 = load i32, i32* @EM2874_R51_IR, align 4
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %19 = call i32 %15(%struct.em28xx* %16, i32 0, i32 %17, i32* %18, i32 20)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %95

24:                                               ; preds = %2
  %25 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %26 = load i32, i32* %25, align 16
  %27 = ashr i32 %26, 7
  %28 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %29 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = and i32 %31, 127
  %33 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %34 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %36 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %74 [
    i32 129, label %38
    i32 130, label %49
    i32 128, label %63
  ]

38:                                               ; preds = %24
  %39 = load i32, i32* @RC_PROTO_RC5, align 4
  %40 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %41 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @RC_SCANCODE_RC5(i32 %43, i32 %45)
  %47 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %48 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  br label %94

49:                                               ; preds = %24
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  %57 = load i32, i32* %56, align 16
  %58 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %59 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %58, i32 0, i32 3
  %60 = call i32 @ir_nec_bytes_to_scancode(i32 %51, i32 %53, i32 %55, i32 %57, i32* %59)
  %61 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %62 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  br label %94

63:                                               ; preds = %24
  %64 = load i32, i32* @RC_PROTO_RC6_0, align 4
  %65 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %66 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @RC_SCANCODE_RC6_0(i32 %68, i32 %70)
  %72 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %73 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  br label %94

74:                                               ; preds = %24
  %75 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %76 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %77 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 24
  %81 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 %82, 16
  %84 = or i32 %80, %83
  %85 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = or i32 %84, %87
  %89 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  %90 = load i32, i32* %89, align 16
  %91 = or i32 %88, %90
  %92 = load %struct.em28xx_ir_poll_result*, %struct.em28xx_ir_poll_result** %5, align 8
  %93 = getelementptr inbounds %struct.em28xx_ir_poll_result, %struct.em28xx_ir_poll_result* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %74, %63, %49, %38
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %22
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RC_SCANCODE_RC5(i32, i32) #2

declare dso_local i32 @ir_nec_bytes_to_scancode(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @RC_SCANCODE_RC6_0(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
