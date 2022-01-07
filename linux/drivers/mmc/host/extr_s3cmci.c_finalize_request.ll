; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_finalize_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_s3cmci.c_finalize_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3cmci_host = type { i64, i32, i32, i32, %struct.mmc_request*, i64, i64, i32, i32 }
%struct.mmc_request = type { %struct.TYPE_4__*, %struct.mmc_command*, %struct.mmc_command* }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.mmc_command = type { i64, %struct.TYPE_3__*, i8** }
%struct.TYPE_3__ = type { i64, i64 }

@COMPLETION_FINALIZE = common dso_local global i64 0, align 8
@dbg_dma = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA Missing (%d)!\0A\00", align 1
@S3C2410_SDIRSP0 = common dso_local global i64 0, align 8
@S3C2410_SDIRSP1 = common dso_local global i64 0, align 8
@S3C2410_SDIRSP2 = common dso_local global i64 0, align 8
@S3C2410_SDIRSP3 = common dso_local global i64 0, align 8
@S3C2410_SDIPRE = common dso_local global i64 0, align 8
@S3C2410_SDICMDARG = common dso_local global i64 0, align 8
@S3C2410_SDIDCON_STOP = common dso_local global i32 0, align 4
@S3C2410_SDIDCON = common dso_local global i64 0, align 8
@S3C2410_SDICMDCON = common dso_local global i64 0, align 8
@S3C2440_SDIFSTA_FIFORESET = common dso_local global i32 0, align 4
@S3C2440_SDIFSTA_FIFOFAIL = common dso_local global i32 0, align 4
@S3C2410_SDIFSTA = common dso_local global i64 0, align 8
@S3C2410_SDICON = common dso_local global i64 0, align 8
@S3C2410_SDICON_FIFORESET = common dso_local global i32 0, align 4
@COMPLETION_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3cmci_host*)* @finalize_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finalize_request(%struct.s3cmci_host* %0) #0 {
  %2 = alloca %struct.s3cmci_host*, align 8
  %3 = alloca %struct.mmc_request*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s3cmci_host* %0, %struct.s3cmci_host** %2, align 8
  %7 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %8 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %7, i32 0, i32 4
  %9 = load %struct.mmc_request*, %struct.mmc_request** %8, align 8
  store %struct.mmc_request* %9, %struct.mmc_request** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %11 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @COMPLETION_FINALIZE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %301

16:                                               ; preds = %1
  %17 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %18 = icmp ne %struct.mmc_request* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %301

20:                                               ; preds = %16
  %21 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %22 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %27 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %26, i32 0, i32 2
  %28 = load %struct.mmc_command*, %struct.mmc_command** %27, align 8
  br label %33

29:                                               ; preds = %20
  %30 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %30, i32 0, i32 1
  %32 = load %struct.mmc_command*, %struct.mmc_command** %31, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = phi %struct.mmc_command* [ %28, %25 ], [ %32, %29 ]
  store %struct.mmc_command* %34, %struct.mmc_command** %4, align 8
  %35 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %68

39:                                               ; preds = %33
  %40 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %41 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %46 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %53 = call i64 @s3cmci_host_usedma(%struct.s3cmci_host* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %57 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %62 = load i32, i32* @dbg_dma, align 4
  %63 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %64 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dbg(%struct.s3cmci_host* %61, i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %301

67:                                               ; preds = %55, %51
  br label %68

68:                                               ; preds = %67, %44, %39, %33
  %69 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %70 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @S3C2410_SDIRSP0, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i8* @readl(i64 %73)
  %75 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %76 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %75, i32 0, i32 2
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  store i8* %74, i8** %78, align 8
  %79 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %80 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @S3C2410_SDIRSP1, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i8* @readl(i64 %83)
  %85 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %86 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %85, i32 0, i32 2
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 1
  store i8* %84, i8** %88, align 8
  %89 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %90 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @S3C2410_SDIRSP2, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i8* @readl(i64 %93)
  %95 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %96 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %95, i32 0, i32 2
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 2
  store i8* %94, i8** %98, align 8
  %99 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %100 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @S3C2410_SDIRSP3, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i8* @readl(i64 %103)
  %105 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %106 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %105, i32 0, i32 2
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 3
  store i8* %104, i8** %108, align 8
  %109 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %110 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %113 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @S3C2410_SDIPRE, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 %111, i64 %116)
  %118 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %119 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %68
  store i32 1, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %68
  %124 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %125 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = icmp ne %struct.TYPE_3__* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %130 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  store i32 1, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %128, %123
  %137 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %138 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @dbg_dumpcmd(%struct.s3cmci_host* %137, %struct.mmc_command* %138, i32 %139)
  %141 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %142 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @S3C2410_SDICMDARG, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @writel(i32 0, i64 %145)
  %147 = load i32, i32* @S3C2410_SDIDCON_STOP, align 4
  %148 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %149 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @S3C2410_SDIDCON, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @writel(i32 %147, i64 %152)
  %154 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %155 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @S3C2410_SDICMDCON, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writel(i32 0, i64 %158)
  %160 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %161 = call i32 @clear_imask(%struct.s3cmci_host* %160)
  %162 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %163 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %162, i32 0, i32 1
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = icmp ne %struct.TYPE_3__* %164, null
  br i1 %165, label %166, label %179

166:                                              ; preds = %136
  %167 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %168 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %173 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %176 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %175, i32 0, i32 1
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  store i64 %174, i64* %178, align 8
  br label %179

179:                                              ; preds = %171, %166, %136
  %180 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %181 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %180, i32 0, i32 1
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = icmp ne %struct.TYPE_3__* %182, null
  br i1 %183, label %184, label %203

184:                                              ; preds = %179
  %185 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %186 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %185, i32 0, i32 1
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %184
  %192 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %193 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %191
  %197 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %198 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %197, i32 0, i32 1
  store i32 1, i32* %198, align 8
  %199 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %200 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @s3cmci_send_request(i32 %201)
  br label %301

203:                                              ; preds = %191, %184, %179
  %204 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %205 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %204, i32 0, i32 0
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = icmp ne %struct.TYPE_4__* %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %203
  br label %288

209:                                              ; preds = %203
  %210 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %211 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %210, i32 0, i32 0
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %232

216:                                              ; preds = %209
  %217 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %218 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %217, i32 0, i32 0
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %223 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %222, i32 0, i32 0
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = mul nsw i32 %221, %226
  %228 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %229 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %228, i32 0, i32 0
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  store i32 %227, i32* %231, align 8
  br label %237

232:                                              ; preds = %209
  %233 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %234 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %233, i32 0, i32 0
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  store i32 0, i32* %236, align 8
  br label %237

237:                                              ; preds = %232, %216
  %238 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %239 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %238, i32 0, i32 0
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %287

244:                                              ; preds = %237
  %245 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %246 = call i64 @s3cmci_host_usedma(%struct.s3cmci_host* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %244
  %249 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %250 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %249, i32 0, i32 7
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @dmaengine_terminate_all(i32 %251)
  br label %253

253:                                              ; preds = %248, %244
  %254 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %255 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %254, i32 0, i32 6
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %268

258:                                              ; preds = %253
  %259 = load i32, i32* @S3C2440_SDIFSTA_FIFORESET, align 4
  %260 = load i32, i32* @S3C2440_SDIFSTA_FIFOFAIL, align 4
  %261 = or i32 %259, %260
  %262 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %263 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %262, i32 0, i32 5
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @S3C2410_SDIFSTA, align 8
  %266 = add nsw i64 %264, %265
  %267 = call i32 @writel(i32 %261, i64 %266)
  br label %286

268:                                              ; preds = %253
  %269 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %270 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %269, i32 0, i32 5
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @S3C2410_SDICON, align 8
  %273 = add nsw i64 %271, %272
  %274 = call i8* @readl(i64 %273)
  %275 = ptrtoint i8* %274 to i32
  store i32 %275, i32* %6, align 4
  %276 = load i32, i32* @S3C2410_SDICON_FIFORESET, align 4
  %277 = load i32, i32* %6, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* %6, align 4
  %280 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %281 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %280, i32 0, i32 5
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @S3C2410_SDICON, align 8
  %284 = add nsw i64 %282, %283
  %285 = call i32 @writel(i32 %279, i64 %284)
  br label %286

286:                                              ; preds = %268, %258
  br label %287

287:                                              ; preds = %286, %237
  br label %288

288:                                              ; preds = %287, %208
  %289 = load i64, i64* @COMPLETION_NONE, align 8
  %290 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %291 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %290, i32 0, i32 0
  store i64 %289, i64* %291, align 8
  %292 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %293 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %292, i32 0, i32 4
  store %struct.mmc_request* null, %struct.mmc_request** %293, align 8
  %294 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %295 = call i32 @s3cmci_check_sdio_irq(%struct.s3cmci_host* %294)
  %296 = load %struct.s3cmci_host*, %struct.s3cmci_host** %2, align 8
  %297 = getelementptr inbounds %struct.s3cmci_host, %struct.s3cmci_host* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %300 = call i32 @mmc_request_done(i32 %298, %struct.mmc_request* %299)
  br label %301

301:                                              ; preds = %288, %196, %60, %19, %15
  ret void
}

declare dso_local i64 @s3cmci_host_usedma(%struct.s3cmci_host*) #1

declare dso_local i32 @dbg(%struct.s3cmci_host*, i32, i8*, i32) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dbg_dumpcmd(%struct.s3cmci_host*, %struct.mmc_command*, i32) #1

declare dso_local i32 @clear_imask(%struct.s3cmci_host*) #1

declare dso_local i32 @s3cmci_send_request(i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @s3cmci_check_sdio_irq(%struct.s3cmci_host*) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
