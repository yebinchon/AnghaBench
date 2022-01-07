; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_writev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0020.c_cfi_staa_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.kvec = type { i64, i8* }

@ECCBUF_SIZE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.kvec*, i64, i64, i64*)* @cfi_staa_writev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_staa_writev(%struct.mtd_info* %0, %struct.kvec* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.kvec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store %struct.kvec* %1, %struct.kvec** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %20 = load i64, i64* @ECCBUF_SIZE, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %186

25:                                               ; preds = %5
  %26 = load i64, i64* @ECCBUF_SIZE, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kmalloc(i64 %26, i32 %27)
  store i8* %28, i8** %17, align 8
  %29 = load i8*, i8** %17, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %186

34:                                               ; preds = %25
  store i64 0, i64* %12, align 8
  br label %35

35:                                               ; preds = %152, %34
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %155

39:                                               ; preds = %35
  %40 = load %struct.kvec*, %struct.kvec** %8, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds %struct.kvec, %struct.kvec* %40, i64 %41
  %43 = getelementptr inbounds %struct.kvec, %struct.kvec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %18, align 8
  %45 = load %struct.kvec*, %struct.kvec** %8, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds %struct.kvec, %struct.kvec* %45, i64 %46
  %48 = getelementptr inbounds %struct.kvec, %struct.kvec* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %19, align 8
  %50 = load i64, i64* %18, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %39
  br label %152

53:                                               ; preds = %39
  %54 = load i64, i64* %16, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %110

56:                                               ; preds = %53
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %18, align 8
  %59 = add i64 %57, %58
  %60 = load i64, i64* @ECCBUF_SIZE, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load i8*, i8** %17, align 8
  %64 = load i64, i64* %16, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8*, i8** %19, align 8
  %67 = load i64, i64* %18, align 8
  %68 = call i32 @memcpy(i8* %65, i8* %66, i64 %67)
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %16, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %16, align 8
  br label %152

72:                                               ; preds = %56
  %73 = load i8*, i8** %17, align 8
  %74 = load i64, i64* %16, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load i8*, i8** %19, align 8
  %77 = load i64, i64* @ECCBUF_SIZE, align 8
  %78 = load i64, i64* %16, align 8
  %79 = sub i64 %77, %78
  %80 = call i32 @memcpy(i8* %75, i8* %76, i64 %79)
  %81 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @ECCBUF_SIZE, align 8
  %84 = load i8*, i8** %17, align 8
  %85 = call i32 @mtd_write(%struct.mtd_info* %81, i64 %82, i64 %83, i64* %14, i8* %84)
  store i32 %85, i32* %15, align 4
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %13, align 8
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %72
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* @ECCBUF_SIZE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91, %72
  br label %176

96:                                               ; preds = %91
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %16, align 8
  %99 = sub i64 %97, %98
  %100 = load i64, i64* %18, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %18, align 8
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %16, align 8
  %104 = sub i64 %102, %103
  %105 = load i8*, i8** %19, align 8
  %106 = getelementptr i8, i8* %105, i64 %104
  store i8* %106, i8** %19, align 8
  %107 = load i64, i64* @ECCBUF_SIZE, align 8
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %10, align 8
  br label %110

110:                                              ; preds = %96, %53
  %111 = load i64, i64* %18, align 8
  %112 = call i64 @ECCBUF_DIV(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %136

114:                                              ; preds = %110
  %115 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* %18, align 8
  %118 = call i64 @ECCBUF_DIV(i64 %117)
  %119 = load i8*, i8** %19, align 8
  %120 = call i32 @mtd_write(%struct.mtd_info* %115, i64 %116, i64 %118, i64* %14, i8* %119)
  store i32 %120, i32* %15, align 4
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %13, align 8
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %114
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* %18, align 8
  %129 = call i64 @ECCBUF_DIV(i64 %128)
  %130 = icmp ne i64 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126, %114
  br label %176

132:                                              ; preds = %126
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* %10, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %10, align 8
  br label %136

136:                                              ; preds = %132, %110
  %137 = load i64, i64* %18, align 8
  %138 = call i64 @ECCBUF_MOD(i64 %137)
  store i64 %138, i64* %16, align 8
  %139 = load i64, i64* %16, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %136
  %142 = load i8*, i8** %17, align 8
  %143 = load i64, i64* @ECCBUF_SIZE, align 8
  %144 = call i32 @memset(i8* %142, i32 255, i64 %143)
  %145 = load i8*, i8** %17, align 8
  %146 = load i8*, i8** %19, align 8
  %147 = load i64, i64* %14, align 8
  %148 = getelementptr i8, i8* %146, i64 %147
  %149 = load i64, i64* %16, align 8
  %150 = call i32 @memcpy(i8* %145, i8* %148, i64 %149)
  br label %151

151:                                              ; preds = %141, %136
  br label %152

152:                                              ; preds = %151, %62, %52
  %153 = load i64, i64* %12, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %12, align 8
  br label %35

155:                                              ; preds = %35
  %156 = load i64, i64* %16, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %155
  %159 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* %16, align 8
  %162 = load i8*, i8** %17, align 8
  %163 = call i32 @mtd_write(%struct.mtd_info* %159, i64 %160, i64 %161, i64* %14, i8* %162)
  store i32 %163, i32* %15, align 4
  %164 = load i64, i64* %14, align 8
  %165 = load i64, i64* %13, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %13, align 8
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %158
  %170 = load i64, i64* %14, align 8
  %171 = load i64, i64* @ECCBUF_SIZE, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169, %158
  br label %176

174:                                              ; preds = %169
  br label %175

175:                                              ; preds = %174, %155
  br label %176

176:                                              ; preds = %175, %173, %131, %95
  %177 = load i64*, i64** %11, align 8
  %178 = icmp ne i64* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i64, i64* %13, align 8
  %181 = load i64*, i64** %11, align 8
  store i64 %180, i64* %181, align 8
  br label %182

182:                                              ; preds = %179, %176
  %183 = load i8*, i8** %17, align 8
  %184 = call i32 @kfree(i8* %183)
  %185 = load i32, i32* %15, align 4
  store i32 %185, i32* %6, align 4
  br label %186

186:                                              ; preds = %182, %31, %22
  %187 = load i32, i32* %6, align 4
  ret i32 %187
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mtd_write(%struct.mtd_info*, i64, i64, i64*, i8*) #1

declare dso_local i64 @ECCBUF_DIV(i64) #1

declare dso_local i64 @ECCBUF_MOD(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
