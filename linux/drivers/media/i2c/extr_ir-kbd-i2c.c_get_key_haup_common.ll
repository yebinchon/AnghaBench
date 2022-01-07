; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_get_key_haup_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_get_key_haup_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ir hauppauge (rc5): s%d r%d t%d dev=%d code=%d\0A\00", align 1
@RC_PROTO_RC5 = common dso_local global i32 0, align 4
@RC_PROTO_RC6_MCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"ir hauppauge (rc6-mce): t%d vendor=%d dev=%d code=%d\0A\00", align 1
@RC_PROTO_RC6_6A_32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"ir hauppauge (rc6-6a-32): vendor=%d dev=%d code=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32*, i32*, i32*, i32)* @get_key_haup_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_haup_common(%struct.IR_i2c* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.IR_i2c*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [6 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.IR_i2c* %0, %struct.IR_i2c** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.IR_i2c*, %struct.IR_i2c** %7, align 8
  %23 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @i2c_master_recv(i32 %24, i8* %25, i32 %26)
  %28 = icmp ne i32 %21, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %182

32:                                               ; preds = %5
  %33 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 128
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %121

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 6
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 3, i32 0
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = ashr i32 %47, 7
  %49 = and i32 %48, 1
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %20, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = ashr i32 %54, 6
  %56 = and i32 %55, 1
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = ashr i32 %61, 5
  %63 = and i32 %62, 1
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %20, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 31
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = ashr i32 %75, 2
  %77 = and i32 %76, 63
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %182

81:                                               ; preds = %38
  %82 = load i32, i32* %13, align 4
  %83 = shl i32 %82, 12
  %84 = load i32, i32* %15, align 4
  %85 = shl i32 %84, 11
  %86 = or i32 %83, %85
  %87 = load i32, i32* %16, align 4
  %88 = shl i32 %87, 6
  %89 = or i32 %86, %88
  %90 = load i32, i32* %17, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = and i32 %92, 8191
  %94 = icmp eq i32 %93, 8191
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %182

96:                                               ; preds = %81
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, 64
  store i32 %101, i32* %17, align 4
  br label %102

102:                                              ; preds = %99, %96
  %103 = load %struct.IR_i2c*, %struct.IR_i2c** %7, align 8
  %104 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %17, align 4
  %112 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_dbg(i32* %106, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* @RC_PROTO_RC5, align 4
  %114 = load i32*, i32** %8, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @RC_SCANCODE_RC5(i32 %115, i32 %116)
  %118 = load i32*, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32*, i32** %10, align 8
  store i32 %119, i32* %120, align 4
  store i32 1, i32* %6, align 4
  br label %182

121:                                              ; preds = %32
  %122 = load i32, i32* %11, align 4
  %123 = icmp eq i32 %122, 6
  br i1 %123, label %124, label %180

124:                                              ; preds = %121
  %125 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 64
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %180

130:                                              ; preds = %124
  %131 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 4
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  store i32 %133, i32* %17, align 4
  %134 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 3
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  store i32 %136, i32* %16, align 4
  %137 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = call i32 @get_unaligned_be16(i8* %138)
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp eq i32 %140, 32783
  br i1 %141, label %142, label %162

142:                                              ; preds = %130
  %143 = load i32, i32* %16, align 4
  %144 = and i32 %143, 128
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = load i32*, i32** %10, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* @RC_PROTO_RC6_MCE, align 4
  %149 = load i32*, i32** %8, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* %16, align 4
  %151 = and i32 %150, 127
  store i32 %151, i32* %16, align 4
  %152 = load %struct.IR_i2c*, %struct.IR_i2c** %7, align 8
  %153 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %152, i32 0, i32 0
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %17, align 4
  %161 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_dbg(i32* %155, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %157, i32 %158, i32 %159, i32 %160)
  br label %174

162:                                              ; preds = %130
  %163 = load i32*, i32** %10, align 8
  store i32 0, i32* %163, align 4
  %164 = load i32, i32* @RC_PROTO_RC6_6A_32, align 4
  %165 = load i32*, i32** %8, align 8
  store i32 %164, i32* %165, align 4
  %166 = load %struct.IR_i2c*, %struct.IR_i2c** %7, align 8
  %167 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %166, i32 0, i32 0
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %17, align 4
  %173 = call i32 (i32*, i8*, i32, i32, i32, ...) @dev_dbg(i32* %169, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %162, %142
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %17, align 4
  %178 = call i32 @RC_SCANCODE_RC6_6A(i32 %175, i32 %176, i32 %177)
  %179 = load i32*, i32** %9, align 8
  store i32 %178, i32* %179, align 4
  store i32 1, i32* %6, align 4
  br label %182

180:                                              ; preds = %124, %121
  br label %181

181:                                              ; preds = %180
  store i32 0, i32* %6, align 4
  br label %182

182:                                              ; preds = %181, %174, %102, %95, %80, %29
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @RC_SCANCODE_RC5(i32, i32) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i32 @RC_SCANCODE_RC6_6A(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
