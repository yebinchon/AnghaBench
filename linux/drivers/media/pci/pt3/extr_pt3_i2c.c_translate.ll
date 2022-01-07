; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_i2c.c_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt3/extr_pt3_i2c.c_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt3_i2cbuf = type { i64 }
%struct.i2c_msg = type { i32, i32, i32, i32* }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt3_i2cbuf*, %struct.i2c_msg*, i32)* @translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @translate(%struct.pt3_i2cbuf* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.pt3_i2cbuf*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pt3_i2cbuf* %0, %struct.pt3_i2cbuf** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pt3_i2cbuf*, %struct.pt3_i2cbuf** %4, align 8
  %11 = getelementptr inbounds %struct.pt3_i2cbuf, %struct.pt3_i2cbuf* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %81, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %12
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i64 %19
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @I2C_M_RD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.pt3_i2cbuf*, %struct.pt3_i2cbuf** %4, align 8
  %30 = call i32 @put_start(%struct.pt3_i2cbuf* %29)
  %31 = load %struct.pt3_i2cbuf*, %struct.pt3_i2cbuf** %4, align 8
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i64 %34
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 1
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @put_byte_write(%struct.pt3_i2cbuf* %31, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %16
  %45 = load %struct.pt3_i2cbuf*, %struct.pt3_i2cbuf** %4, align 8
  %46 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i64 %48
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @put_byte_read(%struct.pt3_i2cbuf* %45, i32 %51)
  br label %80

53:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %76, %53
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i64 %58
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %55, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %54
  %64 = load %struct.pt3_i2cbuf*, %struct.pt3_i2cbuf** %4, align 8
  %65 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i64 %67
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @put_byte_write(%struct.pt3_i2cbuf* %64, i32 %74)
  br label %76

76:                                               ; preds = %63
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %54

79:                                               ; preds = %54
  br label %80

80:                                               ; preds = %79, %44
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %12

84:                                               ; preds = %12
  %85 = load i32, i32* %6, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.pt3_i2cbuf*, %struct.pt3_i2cbuf** %4, align 8
  %89 = call i32 @put_stop(%struct.pt3_i2cbuf* %88)
  %90 = load %struct.pt3_i2cbuf*, %struct.pt3_i2cbuf** %4, align 8
  %91 = call i32 @put_end(%struct.pt3_i2cbuf* %90)
  br label %92

92:                                               ; preds = %87, %84
  ret void
}

declare dso_local i32 @put_start(%struct.pt3_i2cbuf*) #1

declare dso_local i32 @put_byte_write(%struct.pt3_i2cbuf*, i32) #1

declare dso_local i32 @put_byte_read(%struct.pt3_i2cbuf*, i32) #1

declare dso_local i32 @put_stop(%struct.pt3_i2cbuf*) #1

declare dso_local i32 @put_end(%struct.pt3_i2cbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
