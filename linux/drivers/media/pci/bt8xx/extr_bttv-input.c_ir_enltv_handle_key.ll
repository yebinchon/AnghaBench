; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-input.c_ir_enltv_handle_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-input.c_ir_enltv_handle_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, %struct.bttv_ir* }
%struct.bttv_ir = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"gpio=0x%x code=%d | %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" up\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"up/down\00", align 1
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"(cnt) gpio=0x%x code=%d | %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @ir_enltv_handle_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ir_enltv_handle_key(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca %struct.bttv_ir*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %7 = load %struct.bttv*, %struct.bttv** %2, align 8
  %8 = getelementptr inbounds %struct.bttv, %struct.bttv* %7, i32 0, i32 1
  %9 = load %struct.bttv_ir*, %struct.bttv_ir** %8, align 8
  store %struct.bttv_ir* %9, %struct.bttv_ir** %3, align 8
  %10 = load %struct.bttv*, %struct.bttv** %2, align 8
  %11 = getelementptr inbounds %struct.bttv, %struct.bttv* %10, i32 0, i32 0
  %12 = call i32 @bttv_gpio_read(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %15 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ir_extract_bits(i32 %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %20 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i64 2147483648, i64 0
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %28 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 127
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %38 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i8* %43)
  %45 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %46 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @rc_keydown_notimeout(i32 %47, i32 %48, i32 %49, i32 0)
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %33
  %54 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %55 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @rc_keyup(i32 %56)
  br label %58

58:                                               ; preds = %53, %33
  br label %96

59:                                               ; preds = %1
  %60 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %61 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = and i64 %63, 2147483648
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %102

69:                                               ; preds = %59
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %74 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %80 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %71, i8* %79)
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %69
  %84 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %85 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @rc_keyup(i32 %86)
  br label %95

88:                                               ; preds = %69
  %89 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %90 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @rc_keydown_notimeout(i32 %91, i32 %92, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %88, %83
  br label %96

96:                                               ; preds = %95, %58
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %101 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %96, %68
  ret void
}

declare dso_local i32 @bttv_gpio_read(i32*) #1

declare dso_local i32 @ir_extract_bits(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i8*) #1

declare dso_local i32 @rc_keydown_notimeout(i32, i32, i32, i32) #1

declare dso_local i32 @rc_keyup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
